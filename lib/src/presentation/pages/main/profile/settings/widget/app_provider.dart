import 'dart:io';

import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  ThemeMode _theme = ThemeMode.system;
  // final ThemeData _themeData=ThemeData.light(useMaterial3: true);
  String _locale = Platform.localeName;

  ThemeMode get themeMode => _theme;

  void setTheme(ThemeMode theme) {
    _theme = theme;
    notifyListeners();
  }

  String get getLocale => _locale;

  void setLocale(String locale) {
    _locale = locale;
    notifyListeners();
  }
}
