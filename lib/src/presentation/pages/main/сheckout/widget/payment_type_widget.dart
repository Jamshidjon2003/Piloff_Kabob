import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class PaymentTypeWidget extends StatefulWidget {
  const PaymentTypeWidget({Key? key}) : super(key: key);

  @override
  State<PaymentTypeWidget> createState() => _PaymentTypeWidgetState();
}

class _PaymentTypeWidgetState extends State<PaymentTypeWidget> {
  String? gender1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: double.infinity,
        height: 214,
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
                'Тип оплаты',
                style: ThemeTextStyles.light.regularHeadline,
              ),
            ),
            ListTile(
              leading: Image.asset('assets/png/Group.png'),
              title:  Text('Наличные', style: ThemeTextStyles.light.bodyCallout),
              trailing: Radio(
                activeColor: ThemeColors.light.primary,
                value: 'Наличные',
                groupValue: gender1,
                onChanged: (value) {
                  setState(() {
                    gender1 = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              leading: Image.asset('assets/png/payme.png'),
              title:  Text('Payme', style: ThemeTextStyles.light.bodyCallout),
              trailing: Radio(
                activeColor: ThemeColors.light.primary,
                value: 'Payme',
                groupValue: gender1,
                onChanged: (value) {
                  setState(() {
                    gender1 = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              leading: Image.asset('assets/png/click logo.png'),
              title:  Text('Cilic', style: ThemeTextStyles.light.bodyCallout),
              trailing: Radio(
                activeColor: ThemeColors.light.primary,
                value: 'Cilic',
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
