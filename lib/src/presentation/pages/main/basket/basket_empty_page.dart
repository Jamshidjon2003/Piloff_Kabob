import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

import 'widgets/button_widget.dart';

class BasketEmptyPage extends StatelessWidget {
  const BasketEmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Корзина",
          style: ThemeTextStyles.light.appBarTitle,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: const [
          ButtonWidget(),
        ],
      ),
      body: Center(
        child: Image.asset("assets/png/basket.png"),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Оформить заказ"),
        ),
      ),
    );
  }
}
