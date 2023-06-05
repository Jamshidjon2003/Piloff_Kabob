import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 19,
      ),
      child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return Theme(
                  data: ThemeData(backgroundColor: Colors.white70),
                  child: AlertDialog(
                    title:  Text(
                      textAlign: TextAlign.center,
                      'Очистить корзину?',
                      style: ThemeTextStyles.light.appBarTitle,
                    ),
                    content: const Text(
                      textAlign: TextAlign.center,
                      'Вы уверены, что хотите \nочистить корзину?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff858585)),
                    ),
                    actions: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          minimumSize: const Size(120, 42),
                          textStyle: Theme.of(context).textTheme.labelLarge,
                          backgroundColor: const Color(0xffF2F2F2),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Нет',
                          style: ThemeTextStyles.light.buttonStyle,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          minimumSize: const Size(120, 42),
                          textStyle: Theme.of(context).textTheme.labelLarge,
                          backgroundColor: ThemeColors.light.primary,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.basket_empty);
                        },
                        child: Text(
                          'Да',
                          style: ThemeTextStyles.light.buttonStyle,
                        ),
                      ),
                    ],
                    backgroundColor: Colors.white,
                  ),
                );
              },
            );
          },
          child: Image.asset('assets/png/Recycle Bin.png')),
    );
  }
}
