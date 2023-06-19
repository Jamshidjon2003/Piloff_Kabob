import 'package:chuck_interceptor/chuck.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_final/src/data/source/local_source.dart';
import 'package:ploff_final/src/injector_container.dart';
import 'package:ploff_final/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:ploff_final/src/presentation/bloc/auth/confirm/confirm_code_bloc.dart';
import 'package:ploff_final/src/presentation/bloc/register/register_bloc.dart';
import 'package:ploff_final/src/presentation/bloc/splash/splash_bloc.dart';
import 'package:ploff_final/src/presentation/pages/auth/arguments/auth_arguments.dart';
import 'package:ploff_final/src/presentation/pages/auth/auth_page.dart';
import 'package:ploff_final/src/presentation/pages/auth/confirm/confirm_code_page.dart';
import 'package:ploff_final/src/presentation/pages/auth/register_page.dart';
import 'package:ploff_final/src/presentation/pages/error/error_page.dart';
import 'package:ploff_final/src/presentation/pages/internet_connection/internet_connection_page.dart';
import 'package:ploff_final/src/presentation/pages/main/%D1%81heckout/checkout_page.dart';
import 'package:ploff_final/src/presentation/pages/main/basket/basket_empty_page.dart';
import 'package:ploff_final/src/presentation/pages/main/home/product/product_page.dart';
import 'package:ploff_final/src/presentation/pages/main/main_page.dart';
import 'package:ploff_final/src/presentation/pages/main/my_orders/active_order_page.dart';
import 'package:ploff_final/src/presentation/pages/main/my_orders/history_order_oage.dart';
import 'package:ploff_final/src/presentation/pages/main/profile/about_service/about_service_page.dart';
import 'package:ploff_final/src/presentation/pages/main/profile/edit_profile/edit_profile_page.dart';
import 'package:ploff_final/src/presentation/pages/main/profile/filial/filial_page.dart';
import 'package:ploff_final/src/presentation/pages/main/profile/filial/yunusobod_filial_page.dart';
import 'package:ploff_final/src/presentation/pages/main/profile/my_addresses/adress/adress_page.dart';
import 'package:ploff_final/src/presentation/pages/main/profile/my_addresses/my_adress_page.dart';
import 'package:ploff_final/src/presentation/pages/main/profile/profile_page.dart';
import 'package:ploff_final/src/presentation/pages/main/profile/settings/settings_page.dart';
import 'package:ploff_final/src/presentation/pages/splash/language_page.dart';
import 'package:ploff_final/src/presentation/pages/splash/splash_page.dart';

part 'name_routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

final localSource = sl<LocalSource>();

Chuck chuck = Chuck(navigatorKey: rootNavigatorKey);

final class AppRoutes {
  AppRoutes._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    if (kDebugMode) {
      print('route : ${settings.name}');
    }
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => sl<SplashBloc>(),
            child: const SplashPage(),
          ),
        );
      case Routes.main:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case Routes.settings:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case Routes.internetConnection:
        return MaterialPageRoute(
          builder: (_) => const InternetConnectionPage(),
        );
      case Routes.auth:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => sl<AuthBloc>(),
            child: const AuthPage(),
          ),
        );
      case Routes.confirmCode:
         AuthArguments? arg = settings.arguments as AuthArguments;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => sl<ConfirmCodeBloc>(),
            child: ConfirmCodePage(
              arg: arg
            ),
          ),
        );
      case Routes.product:
        return MaterialPageRoute(
          builder: (_) => const ProductPage(),
        );
      case Routes.language:
        return MaterialPageRoute(
          builder: (_) => const LanguagePage(),
        );
      case Routes.checkout:
        return MaterialPageRoute(
          builder: (_) => const CheckoutPage(),
        );
      case Routes.basket_empty:
        return MaterialPageRoute(
          builder: (_) => const BasketEmptyPage(),
        );
      case Routes.active_order:
        return MaterialPageRoute(
          builder: (_) => const ActiveOrderPage(),
        );
      case Routes.history_order:
        return MaterialPageRoute(
          builder: (_) => const HistoryOrderPage(),
        );
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => const ProfilePage(),
        );
      case Routes.edit_profile:
        return MaterialPageRoute(
          builder: (_) => const EditProfilePage(),
        );
      case Routes.filial:
        return MaterialPageRoute(
          builder: (_) => FilialPage(),
        );
      case Routes.my_adress:
        return MaterialPageRoute(
          builder: (_) => const MyAdressPage(),
        );
      case Routes.about_service:
        return MaterialPageRoute(
          builder: (_) => const AboutServicePage(),
        );
      case Routes.adress:
        return MaterialPageRoute(
          builder: (_) => const AdressPage(),
        );
      case Routes.yunusobod_filial:
        return MaterialPageRoute(
            builder: (_) => YunusobodFilialPage(title: "Юнусабад"));
      case Routes.register:
        final String phone =
            settings.arguments! as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => sl<RegisterBloc>(),
            child: RegisterPage(phone: phone),
          ),
        );

      default:
        return MaterialPageRoute(builder: (_) => ErrorPage(settings: settings));
    }
  }

  static Route<dynamic>? onUnknownRoute(RouteSettings settings) {
    if (kDebugMode) {
      print('Navigate to: $settings');
    }
    return MaterialPageRoute(
      builder: (_) => ErrorPage(
        settings: settings,
      ),
    );
  }
}
