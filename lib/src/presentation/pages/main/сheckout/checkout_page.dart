import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/presentation/pages/main/home/product/widget/bottomsheet_widget.dart';
import 'package:ploff_final/src/presentation/pages/main/home/product/widget/nearest_branch_widget.dart';
import 'package:ploff_final/src/presentation/pages/main/my_orders/widget/cheque_widget.dart';
import 'widget/address_widget.dart';
import 'widget/courier_widget.dart';
import 'widget/delivery_time_widget.dart';
import 'widget/payment_type_widget.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage>
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
        centerTitle: true,
        title:  Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Оформить заказ',
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
                    child: Text("Доставка"),
                  ),
                  Tab(
                    child: Text("Самовывоз"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView.builder(
              itemBuilder: (context, index) {
                return const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: AddressWidget(),
                    ),
                    CourierWidget(),
                    DeliveryTimeWidget(),
                    PaymentTypeWidget(),
                    ChequeWidget(),

                  ],
                );
              },
              itemCount: 1),
          ListView.builder(
              itemBuilder: (context, index) {
                return const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: NearestBranchWidget(),
                    ),
                    PaymentTypeWidget(),
                    ChequeWidget(),

                  ],
                );
              },
              itemCount: 1),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const BottomSheetWidget();
                },
              );
            },
            child: const Text("Заказать")),
      ),
    );
  }
}
