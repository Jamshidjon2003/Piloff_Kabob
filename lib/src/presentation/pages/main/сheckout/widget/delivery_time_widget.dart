import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

enum SingingCharacter { lafayette, jefferson }

class DeliveryTimeWidget extends StatefulWidget {
  const DeliveryTimeWidget({Key? key}) : super(key: key);

  @override
  State<DeliveryTimeWidget> createState() => _DeliveryTimeWidgetState();
}

class _DeliveryTimeWidgetState extends State<DeliveryTimeWidget> {
  String? gender1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: double.infinity,
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
                'Время доставка ',
                style: ThemeTextStyles.light.regularHeadline,
              ),
            ),
            ListTile(
              leading: Image.asset('assets/png/motorbike.png'),
              title:  Text('Срочная доставка', style: ThemeTextStyles.light.bodyCallout),
              trailing: Radio(
                activeColor: ThemeColors.light.primary,
                value: 'Да',
                groupValue: gender1,
                onChanged: (value) {
                  setState(() {
                    gender1 = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              leading: Image.asset('assets/png/on-time.png'),
              title:  Text('Доставка по расписанию', style: ThemeTextStyles.light.bodyCallout),
              trailing: Radio(
                activeColor: ThemeColors.light.primary,
                value: 'Нет',
                groupValue: gender1,
                onChanged: (value) {
                  setState(() {
                    gender1 = value.toString();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
