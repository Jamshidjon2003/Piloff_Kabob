import 'package:flutter/material.dart';
import 'package:ploffe_kebab/src/config/themes/themes.dart';
import 'package:ploffe_kebab/src/core/extension/extension.dart';

class Snack {
  static void show(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        padding: AppUtils.kPaddingAll16,
        behavior: SnackBarBehavior.fixed,
        backgroundColor: context.color.primary,
        clipBehavior: Clip.antiAlias,
        dismissDirection: DismissDirection.none,
        content: Text(message),
      ),
    );
  }
}