import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ploff_final/src/data/models/home/banner_response.dart';
import 'package:ploff_final/src/domain/repositories/auth/auth_repository.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AuthRepository authRepository;

  HomeBloc(this.authRepository) : super(const HomeState()) {
    on<GetBanners>(_getBanners);
  }

  Future<FutureOr<void>> _getBanners(
    GetBanners event,
    Emitter<HomeState> emit,
  ) async {
    final result = await authRepository.banner();
    result.fold((l) => l, (r) {
      emit(HomeState.bannerState(r));
    });
  }
}
