import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/core/constants/constants.dart';
import 'package:ploff_final/src/core/extension/extension.dart';
import 'package:ploff_final/src/injector_container.dart';
import 'package:ploff_final/src/presentation/bloc/banner/home_bloc.dart';
import 'package:ploff_final/src/presentation/bloc/main/main_bloc.dart';
import 'package:ploff_final/src/presentation/pages/main/home/home_page.dart';
import 'package:ploff_final/src/presentation/pages/main/my_orders/my_orders_page.dart';
import 'package:ploff_final/src/presentation/pages/main/profile/profile_page.dart';

import 'basket/basket_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      buildWhen: (previous, current) =>
          previous.bottomMenu != current.bottomMenu,
      builder: (_, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.bottomMenu.index,
            children: [
              BlocProvider<HomeBloc>(
                create: (_) => sl<HomeBloc>(),
                child: const HomePage(),
              ),
              const BasketPage(),
              const MyOrdersPage(),
              const ProfilePage()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            key: Constants.bottomNavigatorKey,
            onTap: (i) {
              if (i == 3 && !localSource.hasProfile) {
                Navigator.pushNamed(context, Routes.auth);
                // Navigator.pushNamed(context, Routes.profile);

                return;
              }
              context
                  .read<MainBloc>()
                  .add(MainEventChanged(BottomMenu.values[i]));
            },
            currentIndex: state.bottomMenu.index,
            items: [
              _navigationBarItem(
                label: context.translate('home'),
                icon: Icons.home_filled,
                activeIcon: Icons.home_filled,
              ),
              _navigationBarItem(
                label: context.translate('basket'),
                icon: Icons.shopping_cart,
                activeIcon: Icons.shopping_cart,
              ),
              _navigationBarItem(
                label: context.translate('orders'),
                icon: Icons.shopping_bag,
                activeIcon: Icons.shopping_bag,
              ),
              _navigationBarItem(
                label: context.translate('profile'),
                icon: AppIcons.profile,
                activeIcon: AppIcons.active_profile,
              ),
            ],
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _navigationBarItem({
    required String label,
    required IconData icon,
    required IconData activeIcon,
  }) =>
      BottomNavigationBarItem(
        icon: Padding(
          padding: AppUtils.kPaddingBottom2,
          child: Icon(icon),
        ),
        activeIcon: Padding(
          padding: AppUtils.kPaddingBottom2,
          child: Icon(activeIcon),
        ),
        label: label,
        tooltip: label,
      );
}
