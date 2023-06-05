import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
            child: Text(
              'Адрес доставки',
              style: ThemeTextStyles.light.regularHeadline,
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 4),
            child: Text(
              'Текущий адрес',
              style: ThemeTextStyles.light.adress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: TextFormField(
              style: ThemeTextStyles.light.bodyFootnote,
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
                    style: ThemeTextStyles.light.bodyFootnote,
                    decoration: const InputDecoration(
                        hintText: 'Подъезд',
                        fillColor: Color(0xffF5F5F5),
                        labelStyle:
                            TextStyle(fontSize: 10, color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.0),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),
                    // controller: cpfcontroller,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormField(
                    style: ThemeTextStyles.light.bodyFootnote,
                    decoration: const InputDecoration(
                        hintText: 'Этаж',
                        fillColor: Color(0xffF5F5F5),
                        labelStyle:
                            TextStyle(fontSize: 10, color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.0),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),
                    // controller: cpfcontroller,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormField(
                    style: ThemeTextStyles.light.bodyFootnote,
                    decoration: const InputDecoration(
                        hintText: 'Квартира',
                        fillColor: Color(0xffF5F5F5),
                        labelStyle:
                            TextStyle(fontSize: 10, color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.0),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),
                    // controller: cpfcontroller,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/png/map.png'),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 4),
            child: Text(
              'Мои адреса',
              style: ThemeTextStyles.light.adress,
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: TextFormField( style: ThemeTextStyles.light.bodyFootnote,
              decoration: const InputDecoration(
                  hintText: 'Бешкайрагач 12',
                  fillColor: Color(0xffF5F5F5),
                  labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
              // controller: cpfcontroller,
            ),
          ),
        ],
      ),
    );
  }
}
