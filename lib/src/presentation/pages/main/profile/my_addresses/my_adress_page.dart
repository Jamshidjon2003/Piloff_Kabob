import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class MyAdressPage extends StatelessWidget {
  const MyAdressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          'Мои адреса',
          style: ThemeTextStyles.light.regularHeadline,
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.adress);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                width: double.infinity,
                height: 67,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset('assets/png/locat.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 11),
                              child: Text('Работа'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 11),
                              child: Text(
                                'Ойбек 20/45',
                                style: ThemeTextStyles.light.bodySubheadline,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Image.asset('assets/png/Edit.png')),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.adress);
            },
            child: Container(
              width: double.infinity,
              height: 67,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Image.asset('assets/png/locat.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          const Padding(
                            padding: EdgeInsets.only(top: 11),
                            child: Text('Дом'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 11),
                            child: Text(
                              'Бешягач, Массив 19/30',
                              style: ThemeTextStyles.light.bodySubheadline,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Image.asset('assets/png/Edit.png')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
