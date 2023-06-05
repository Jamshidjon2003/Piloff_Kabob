import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class ActiveOrderWidget extends StatelessWidget {
  const ActiveOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              color: Colors.white70,
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Заказ №789",
                        style: ThemeTextStyles.light.regularHeadline,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(14, 115, 246, 0.1)),
                          minimumSize: MaterialStateProperty.all(
                            const Size(101, 32),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.active_order);
                        },
                        child: const Text(
                          "Готовится",
                          style: TextStyle(color: Color(0xff0E73F6)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Image.asset(
                    "assets/png/order.png",
                    width: 375,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 338, left: 111, right: 112),
          child: Image.asset(
            'assets/png/messanger.png',
            width: 152,
            height: 40,
          ),
        ),
      ],
    );
  }
}
