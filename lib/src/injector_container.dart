import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_retry_plus/dio_retry_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/data/source/local_source.dart';
import 'package:ploff_final/src/domain/network/api_client.dart';
import 'package:ploff_final/src/domain/repositories/auth/auth_repository.dart';
import 'package:ploff_final/src/presentation/bloc/banner/home_bloc.dart';
import 'package:ploff_final/src/presentation/bloc/register/register_bloc.dart';

import 'core/constants/constants.dart';
import 'core/platform/network_info.dart';
import 'presentation/bloc/auth/auth_bloc.dart';
import 'presentation/bloc/auth/confirm/confirm_code_bloc.dart';
import 'presentation/bloc/main/main_bloc.dart';
import 'presentation/bloc/splash/splash_bloc.dart';

final sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  ///External
  await initHive();

  sl.registerLazySingleton(
    () => Dio()
      ..options = BaseOptions(
        contentType: 'application/json',
        sendTimeout: const Duration(seconds: 3),
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        headers: {
          'Shipper': Constants.shipperId,
          'Platform': Constants.platform,
        },
      )
      ..interceptors.addAll(
        [
          LogInterceptor(
            requestBody: kDebugMode,
            responseBody: kDebugMode,
          ),
          if (kDebugMode) chuck.getDioInterceptor(),
        ],
      ),
  );
  sl<Dio>().interceptors.add(
        RetryInterceptor(
          dio: sl<Dio>(),
          toNoInternetPageNavigator: () async => Navigator.pushNamed(
            rootNavigatorKey.currentContext!,
            Routes.internetConnection,
          ),
          accessTokenGetter: () => localSource.accessToken,
          refreshTokenFunction: () async {
            await localSource.userClear();
            await Navigator.pushNamedAndRemoveUntil(
              rootNavigatorKey.currentContext!,
              Routes.initial,
              (route) => false,
            );
          },
        ),
      );

  sl
    ..registerLazySingleton(InternetConnectionChecker.new)
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()))
    ..registerSingleton<LocalSource>(LocalSource(_box));

  /// main
  mainFuture();

  /// auth
  authFeature();
}

void mainFuture() {
  /// splash
  sl
    ..registerFactory(SplashBloc.new)
    ..registerLazySingleton(MainBloc.new)
    ..registerLazySingleton(() => HomeBloc(sl()));
}

void authFeature() {
  late final ApiClient authClient = ApiClient(sl(), Constants.baseUrl);
  sl
    ..registerFactory<AuthBloc>(() => AuthBloc(sl()))
    ..registerFactory<ConfirmCodeBloc>(() => ConfirmCodeBloc(sl()))
    ..registerFactory(() => RegisterBloc(sl()))
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        apiClient: authClient,
        networkInfo: sl(),
      ),
    );
}

Future<void> initHive() async {
  const boxName = 'bloc_mobile_box';
  Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
