import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class DeliveryAddressWidget extends StatefulWidget {
  const DeliveryAddressWidget({Key? key}) : super(key: key);

  @override
  State<DeliveryAddressWidget> createState() => _DeliveryAddressWidgetState();
}

class _DeliveryAddressWidgetState extends State<DeliveryAddressWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 355,
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
            padding: const EdgeInsets.all(16),
            child: Text(
              "Адрес доставки",
              style: ThemeTextStyles.light.appBarTitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: TextFormField(
              style: ThemeTextStyles.light.regularFootnote,
              decoration: const InputDecoration(
                  hintText: 'Бешкайрагач 12',
                 ),
              // controller: cpfcontroller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: ThemeTextStyles.light.regularFootnote,
                    decoration:  const InputDecoration(
                        hintText: 'Подъезд',
                        ),
                    // controller: cpfcontroller,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormField(
                    style: ThemeTextStyles.light.regularFootnote,
                    decoration:  const InputDecoration(
                        hintText: 'Этаж',
                        ),
                    // controller: cpfcontroller,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormField(
                    style: ThemeTextStyles.light.bodyFootnote,
                    decoration:  const InputDecoration(
                        hintText: 'Квартира',
                       ),
                    // controller: cpfcontroller,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: TextFormField(
              style: ThemeTextStyles.light.regularFootnote,
              decoration:  const InputDecoration(
                  hintText: 'Ориентир',
                  ),
              // controller: cpfcontroller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextFormField(
              style: ThemeTextStyles.light.regularFootnote,
              decoration:  const InputDecoration(
                  hintText: 'Название адреса',
                  ),
              // controller: cpfcontroller,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Подтвердить"),
            ),
          ),
        ],
      ),
    );
  }
}
