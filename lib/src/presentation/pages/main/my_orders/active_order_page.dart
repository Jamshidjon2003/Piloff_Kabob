import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

import 'widget/cheque_widget.dart';

class ActiveOrderPage extends StatelessWidget {
  const ActiveOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Заказ №789"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Container(
              width: double.infinity,
              height: 304,
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
                          onPressed: () {},
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
                  ListTileWidget(
                      icon: Icons.location_on_outlined,
                      title: "Адрес",
                      text: "Массив Бешягач 19"),
                  ListTileWidget(
                      icon: Icons.watch_later_outlined,
                      title: "Время",
                      text: "20:56"),
                  ListTileWidget(
                      icon: Icons.calendar_today,
                      title: "Дата",
                      text: "11.05.2022"),
                  ListTileWidget(
                      icon: Icons.credit_card,
                      title: "Способ оплаты",
                      text: "Наличные"),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 73,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 4),
                        child: Text(
                          "Курьер",
                          style: ThemeTextStyles.light.regularHeadline,
                        ),
                      ),
                      Text(
                        "Abdullatif Murad",
                        style: ThemeTextStyles.light.adress,
                      ),
                    ],
                  ),
                  Image.asset("assets/png/phone.png"),
                ],
              ),
            ),
          ),
          const ChequeWidget(),
        ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  ListTileWidget(
      {Key? key, required this.icon, required this.title, required this.text})
      : super(key: key);
  IconData icon;
  String title;
  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color(0xff858585),
        ),
        title: Text(
          title,
          style: ThemeTextStyles.light.adress,
        ),
        trailing: Text(
          text,
          style: ThemeTextStyles.light.features,
        ),
      ),
    );
  }
}
