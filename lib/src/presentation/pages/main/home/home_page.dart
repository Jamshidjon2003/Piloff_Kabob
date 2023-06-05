import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

import 'widgets/discount_widget.dart';
import 'widgets/popular_widget.dart';
import 'widgets/recommendations_widget.dart';

part 'package:ploff_final/src/presentation/pages/main/home/mixin/home_mixin.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin, HomeMixin {



  @override
  void initState() {
    super.initState();
    initStateController(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 18,
                // color: ThemeColors.light.black2,
              ),
              Text(
                "Массив Бешягач 19/30",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 20,
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                    const TextField(
                      decoration: InputDecoration(contentPadding: EdgeInsets.all(2),
                        hintStyle: TextStyle(color: Color(0xff9AA6AC)),
                        hintText: 'Поиск по всей еде',
                        prefixIcon: Icon(Icons.search, color: Color(0xff9AA6AC), ),

                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selected = index;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: AppUtils.kBorderRadius8,
                                    color: selected == index
                                        ? ThemeColors.light.primary
                                        : const Color(0xffF5F5F5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 10,
                                        bottom: 10),
                                    child: Text(
                                      titleList[index],
                                      style: ThemeTextStyles.light.buttonStyle,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  width: 375,
                  height: 204,
                  color: Colors.white,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: pageController,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/png/rasm.png",
                          width: 343,
                          height: 160,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "assets/png/rasm.png",
                          width: 343,
                          height: 160,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "assets/png/rasm.png",
                          width: 343,
                          height: 160,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const DiscountWidget(),
            const PopularWidget(),
            const RecommendationsWidget(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    disposeController();
    super.dispose();
  }
}
