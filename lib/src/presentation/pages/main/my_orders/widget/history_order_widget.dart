import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class HistoryOrderWidget extends StatelessWidget {
  const HistoryOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderWidget(
          text: 'Заказ №341',
          color: const Color.fromRGBO(34, 195, 72, 0.1),
          title: 'Доставлен',
          titlecolor: const Color(0xff22C348),
        ),
        OrderWidget(
          text: 'Заказ №124',
          color: const Color(0xffFFE8E7),
          title: 'Отменён',
          titlecolor: const Color(0xffF30404),
        ),
        OrderWidget(
          text: 'Заказ №152',
          color: const Color.fromRGBO(34, 195, 72, 0.1),
          title: 'Доставлен',
          titlecolor: const Color(0xff22C348),
        ),
      ],
    );
  }
}

class OrderWidget extends StatefulWidget {
  OrderWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.title,
      required this.titlecolor})
      : super(key: key);
  String text;
  Color color;
  String title;
  Color titlecolor;

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.history_order);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: Colors.white70,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.text,
                      style: ThemeTextStyles.light.regularHeadline,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            widget.color,
                          ),
                          minimumSize: MaterialStateProperty.all(
                            const Size(101, 32),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          widget.title,
                          style: TextStyle(
                            color: widget.titlecolor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('86 000 сум',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff5F5F5F),
                        )),
                    Row(
                      children:  [
                        const Icon(
                          Icons.calendar_month_rounded,
                          color: Color(0xff858585),
                        ),
                        Text(
                          '11.05.2022',
                          style: ThemeTextStyles.light.adress,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
