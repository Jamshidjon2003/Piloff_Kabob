import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        child: Container(
          width: double.infinity,
          height: 550,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    'Со скидкой', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
                ContainerWidget(
                    text: '35 000 сум', image: 'assets/png/ploff1.png'),
                ContainerWidget(
                    text: '47 000 сум', image: 'assets/png/ploff2.png'),
                ContainerWidget(
                    text: '41 000 сум', image: 'assets/png/ploff3.png'),
                ContainerWidget(
                    text: '52 000 сум', image: 'assets/png/ploff4.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  ContainerWidget({Key? key, required this.text, required this.image})
      : super(key: key);
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         Navigator.pushNamed(context, Routes.product);
      },
      child: SizedBox(
        width: double.infinity,
        height: 125,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      'Чайханский плов',
                      style: ThemeTextStyles.light.bodySubheadline,
                    ),
                    const Text(
                      'Своим именем чайханский плов обязан \nстарой ташкентской традиции «ош»...',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff858585),
                      ),
                    ),
                    Text(
                      text,
                      style:ThemeTextStyles.light.buttonStyle,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    image,
                    width: 88,
                    height: 88,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/png/Rectangle.png',
            ),
          ],
        ),
      ),
    );
  }
}
