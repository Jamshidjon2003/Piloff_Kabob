import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class CourierWidget extends StatefulWidget {
  const CourierWidget({Key? key}) : super(key: key);

  @override
  State<CourierWidget> createState() => _CourierWidgetState();
}

class _CourierWidgetState extends State<CourierWidget> {
  String? gender1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, top: 16),
      child: Container(
        width: double.infinity,
        height: 158,
        decoration: const BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Text(
                'Хотели бы что бы вам позвонил курьер?',
                style: ThemeTextStyles.light.regularHeadline,
              ),
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.light.primary,
              title: Text(
                'Да',
                style: ThemeTextStyles.light.features,
              ),
              value: 'Да',
              groupValue: gender1,
              onChanged: (value) {
                setState(() {
                  gender1 = value.toString();
                });
              },
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.light.primary,
              title: Text(
                'Нет',
                style: ThemeTextStyles.light.features,
              ),
              value: 'Нет',
              groupValue: gender1,
              onChanged: (value) {
                setState(() {
                  gender1 = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
