import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class RecommendedWidget extends StatefulWidget {
  const RecommendedWidget({Key? key}) : super(key: key);

  @override
  State<RecommendedWidget> createState() => _RecommendedWidgetState();
}

class _RecommendedWidgetState extends State<RecommendedWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 280,
      // width: 375,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: AppUtils.kPaddingAll6,
            child: Text('Рекомендуемый', style: ThemeTextStyles.light.bodyHeadline),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SizedBox(
              width: 448,
              height: 246,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RecommendedItem(
                      image: 'assets/png/Chaykhansky pilaf1.png',
                      text: 'Чайханский плов',
                      cost: '40 000 сум'),
                  RecommendedItem(
                      image: 'assets/png/wedding pilaf1.png',
                      text: 'Свадебный плов',
                      cost: '45 000 сум'),
                  RecommendedItem(
                      image: 'assets/png/Chaykhansky pilaf1.png',
                      text: 'Чайханский плов',
                      cost: '40 000 сум'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendedItem extends StatelessWidget {
  RecommendedItem(
      {Key? key, required this.image, required this.text, required this.cost})
      : super(key: key);
  String image;
  String text;
  String cost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        // width: 148,
        // height: 210,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Color(0xffF8F8F8),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 148,
              height: 120,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: AppUtils.kPaddingAll8,
              child: Text(
                text,
                maxLines: 2,

                style: ThemeTextStyles.light.bodySubheadline,
              ),
            ),
            Padding(
              padding: AppUtils.kPaddingAll8,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    minimumSize:
                        MaterialStateProperty.all(const Size(132, 36))),
                onPressed: () {},
                child: Text(cost, style: const TextStyle(color: Colors.black),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
