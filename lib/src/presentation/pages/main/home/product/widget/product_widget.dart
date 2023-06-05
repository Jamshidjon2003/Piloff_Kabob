import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
        width: double.infinity,
        height: 158,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                "Тип",
                style: ThemeTextStyles.light.bodyHeadline,
              ),
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.light.primary,
              title:  Text(
                "Чайханский плов",
                style: ThemeTextStyles.light.features,
              ),
              value: "Чайханский плов",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.light.primary,
              title:  Text(
                "Свадебный плов",
                style: ThemeTextStyles.light.features,
              ),
              value: "Свадебный плов",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SizeWidget extends StatefulWidget {
  const SizeWidget({Key? key}) : super(key: key);

  @override
  State<SizeWidget> createState() => _SizeWidgetState();
}

class _SizeWidgetState extends State<SizeWidget> {
  String? gender1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: double.infinity,
        height: 158,
        decoration: const BoxDecoration(
          color: Colors.white,
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
              child: Row(
                children:  [
                  Text(
                    "Размер",
                    style: ThemeTextStyles.light.bodyHeadline,
                  ),
                  const Text(
                    "*",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.light.primary,
              title:  Text(
                "1 порция",
                style: ThemeTextStyles.light.features,
              ),
              value: "1 порция",
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
              title:  Text(
                "0,7 порция",
                style: ThemeTextStyles.light.features,
              ),
              value: "0,7 порция",
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
