import 'package:flutter/material.dart';
import 'package:ploffe_kebab/src/core/extension/extension.dart';
import 'package:ploffe_kebab/src/presentation/components/search_widget/search_bar.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translate('favorites')),
      ),
      body: const SearchBarWidget(),
    );
  }
}
