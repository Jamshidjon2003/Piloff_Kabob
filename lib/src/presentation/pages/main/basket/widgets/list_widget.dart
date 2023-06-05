import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/presentation/pages/main/home/product/widget/counter_widget.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        color: Colors.white70,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 155,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16, top: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/png/list_image1.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            'Чайханский плов',
                            style: ThemeTextStyles.light.regularHeadline,
                          ),
                          Text(
                            'Без лука',
                            style: ThemeTextStyles.light.list_text,
                          ),
                          Text(
                            'Без Яйцо',
                            style: ThemeTextStyles.light.list_text,
                          ),
                          Text(
                            'Без Салат',
                            style: ThemeTextStyles.light.list_text,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              '47 000 сум',
                              style: ThemeTextStyles.light.bodySubheadline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.clear),
                        CounterWidget(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            SizedBox(
              width: double.infinity,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/png/list_image1.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            'Свадебный плов',
                            style: ThemeTextStyles.light.regularHeadline,
                          ),
                          Text(
                            '0,7 порция',
                            style: ThemeTextStyles.light.list_text,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              '47 000 сум',
                              style: ThemeTextStyles.light.bodySubheadline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Icon(Icons.clear),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: CounterWidget(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            SizedBox(
              width: double.infinity,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/png/list_image2.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Особый плов',
                            style: ThemeTextStyles.light.regularHeadline,
                          ),
                          Text(
                            '1 порция',
                            style: ThemeTextStyles.light.list_text,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              '47 000 сум',
                              style: ThemeTextStyles.light.bodySubheadline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.clear),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CounterWidget(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Общая сумма',
                      style: ThemeTextStyles.light.bodySubheadline,
                    ),
                    Text(
                      '58 000 сум',
                      style: ThemeTextStyles.light.regularHeadline,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
