import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

import 'widget/active_order_widget.dart';
import 'widget/history_order_widget.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({Key? key}) : super(key: key);

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;

  int current = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Мои заказы',
            style: ThemeTextStyles.light.regularHeadline,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Container(
            width: double.infinity,
            height: 38,
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                colorScheme: Theme.of(context).colorScheme.copyWith(
                      surfaceVariant: Colors.transparent,
                    ),
              ),
              child: TabBar(
                labelColor: Colors.black,
                padding: const EdgeInsets.all(2),
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                tabs: const [
                  Tab(
                    child: Text("Активные заказы"),
                  ),
                  Tab(
                    child: Text("История заказов"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
           ActiveOrderWidget(),
          HistoryOrderWidget(),

        ],
      ),
    );
  }
}
