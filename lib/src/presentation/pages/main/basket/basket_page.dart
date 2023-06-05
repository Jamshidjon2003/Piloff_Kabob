import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

import 'widgets/basket_widget.dart';
import 'widgets/button_widget.dart';
import 'widgets/list_widget.dart';


class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Корзина",
          style: ThemeTextStyles.light.appBarTitle,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: const [
          ButtonWidget(),
        ],
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          const SliverToBoxAdapter(
            child: ListWidget(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                width: 375,
                height: 110,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Комментарий", style: ThemeTextStyles.light.appBarTitle),
                      const SizedBox(height: 10),
                      const SizedBox(
                        height: 48,
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            counterStyle: TextStyle(color: Colors.green),
                            hintText: 'Напишите комментарий к заказу',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const BasketWidget(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.checkout);
          },
          child: const Text("Оформить заказ"),
        ),
      ),
    );
  }
}
