import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/data/source/local_source.dart';

import '../../../../injector_container.dart';

class ProfilePage extends StatefulWidget {
   const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title:  Text(
          'Профиль ',
          style: ThemeTextStyles.light.appBarTitle,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              width: double.infinity,
              height: 87,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 8),
                          child:
                            Text(sl<LocalSource>().fullName),

                        ),
                         Text(sl<LocalSource>().phone,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff5F5F5F)),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.edit_profile);
                      },
                      child: Image.asset('assets/png/Edit.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
              width: double.infinity,
              height: 259,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Column(
                children: [
                  ProfileItem(
                    icon: 'assets/png/localation.png',
                    text: 'Филиалы',
                    onTap: () {
                      Navigator.pushNamed(context, Routes.filial);
                    },
                  ),
                  ProfileItem(
                      icon: 'assets/png/setting.png',
                      text: 'Настройки',
                      onTap: () {
                        Navigator.pushNamed(context, Routes.settings);
                      }),
                  ProfileItem(
                      icon: 'assets/png/location pin.png',
                      text: 'Мои адресы',
                      onTap: () {
                        Navigator.pushNamed(context, Routes.my_adress);
                      }),
                  ProfileItem(
                      icon: 'assets/png/about.png',
                      text: 'О сервисе',
                      onTap: () {
                        Navigator.pushNamed(context, Routes.about_service);
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  ProfileItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  String icon;
  String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: double.infinity,
      height: 64,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.only(left: 12, top: 4),
        leading: Image.asset(
          icon,
          width: 40,
          height: 40,
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.chevron_right_outlined),
        ),
      ),
    );
  }
}

