import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

import 'delivery_address_widget.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 281,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Text(
              "Мои адреса",
              style: ThemeTextStyles.light.appBarTitle,
            ),
          ),
          RadioListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8),
            activeColor: ThemeColors.light.primary,
            title:  Text(
              "Бешкайрагач, Массив 19/30",
              style: ThemeTextStyles.light.regularSubheadline,
            ),
            value: "Бешкайрагач, Массив 19/30",
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
              "Ойбек 20/45",
              style: ThemeTextStyles.light.regularSubheadline,
            ),
            value: "Ойбек 20/45",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 60, bottom: 16, left: 16, right: 16),
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const DeliveryAddressWidget();
                  },
                );
              },
              child: const Text("+ Добавить новый адрес"),
            ),
          ),
        ],
      ),
    );
  }
}
