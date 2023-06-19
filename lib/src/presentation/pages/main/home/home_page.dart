import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/presentation/bloc/banner/home_bloc.dart';

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
  int index = 0;

  @override
  void initState() {
    super.initState();
    initStateController(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<HomeBloc>().add(const GetBanners());
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
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(2),
                      hintStyle: TextStyle(color: Color(0xff9AA6AC)),
                      hintText: 'Поиск по всей еде',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff9AA6AC),
                      ),
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
        body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          if (state is BannerState) {
            final list = state.banners?.banners?.map((e) => e.image).toList();
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      bottom: 6,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: ThemeColors.light.white,
                        ),
                        padding: AppUtils.kPaddingAll16,
                        height: 172,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: AppUtils.kBorderRadius8,
                                child: PageView.builder(
                                  itemCount:
                                      int.tryParse(state.banners?.count ?? '0'),
                                  onPageChanged: (i) {
                                    setState(() {
                                      index = i;
                                    });
                                  },
                                  itemBuilder: (_, index) {
                                    return CachedNetworkImage(
                                      imageUrl: list![index] ?? '',
                                      fit: BoxFit.cover,
                                    );
                                  },
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 10,
                              child: Center(
                                child: SizedBox(
                                  height: 8,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (_, index) {
                                      return AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                          color: index == this.index
                                              ? ThemeColors.light.white
                                              : ThemeColors.light.white
                                                  .withOpacity(0.4),
                                          shape: BoxShape.circle,
                                        ),
                                      );
                                    },
                                    separatorBuilder: (_, __) =>
                                        AppUtils.kBoxWidth4,
                                    itemCount: list!.length,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const DiscountWidget(),
                const PopularWidget(),
                const RecommendationsWidget(),
              ],
            );
          }
          return const SizedBox();
        }),
      ),
    );
  }

  @override
  void dispose() {
    disposeController();
    super.dispose();
  }
}
