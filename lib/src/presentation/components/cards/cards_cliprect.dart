import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/core/extension/extension.dart';

class CardsClipRRect extends StatelessWidget {
  final Widget child;

  const CardsClipRRect({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: context.theme.cardColor,
      surfaceTintColor: context.theme.cardColor,
      shadowColor: context.theme.shadowColor,
      type: MaterialType.card,
      borderRadius: AppUtils.kBorderRadius8,
      child: ClipRRect(
        borderRadius: AppUtils.kBorderRadius8,
        child: child,
      ),
    );
  }
}
