import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class ChequeWidget extends StatelessWidget {
  const ChequeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        width: double.infinity,
        height: 201,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Чек',
                  style: ThemeTextStyles.light.regularHeadline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Чайханский плов х1',
                      style: ThemeTextStyles.light.adress,
                    ),
                    Text(
                      '55 000 сум',
                      style: ThemeTextStyles.light.adress,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      'Свадебный плов х2',
                      style: ThemeTextStyles.light.adress,
                    ),
                    Text(
                      '55 000 сум',
                      style: ThemeTextStyles.light.adress,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Доставка',
                      style: ThemeTextStyles.light.adress,
                    ),
                    Text(
                      '55 000 сум',
                      style: ThemeTextStyles.light.adress,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Общая сумма',
                    style: ThemeTextStyles.light.regularHeadline,
                  ),
                  Text(
                    '95 000 сум',
                    style: ThemeTextStyles.light.regularHeadline,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
