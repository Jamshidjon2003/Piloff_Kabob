import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_localizations/flutter_localizations.dart';

class AppLocalizations {
  AppLocalizations._();

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations) ??
        instance;
  }

  static AppLocalizations get instance => AppLocalizations._();
  static Map<String, dynamic> _localizedValues = {};

  String translate(String key) {
    if (_localizedValues.isNotEmpty) {
      return _localizedValues[key] ?? '* $key';
    }
    return '';
  }

  static Future<AppLocalizations> load(Locale locale) async {
    String jsonContent = await rootBundle.loadString(
      "assets/locale/${locale.languageCode}.json",
    );
    _localizedValues = jsonDecode(jsonContent);
    return instance;
  }

  static const Iterable<LocalizationsDelegate> localizationsDelegates = [
    TranslationsDelegate(),
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('ru', 'RU'),
    Locale('uz', 'UZ'),
  ];
}

class TranslationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const TranslationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['ru', 'uz', 'en'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return await SynchronousFuture<AppLocalizations>(
      await AppLocalizations.load(locale),
    );
  }

  @override
  bool shouldReload(TranslationsDelegate old) => false;
}
