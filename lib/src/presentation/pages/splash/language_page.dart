import 'package:flutter/material.dart';
import 'package:ploff_final/src/app_options.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/core/extension/extension.dart';
import 'package:ploff_final/src/core/l10n/app_localizations.dart';
import 'package:ploff_final/src/presentation/pages/main/profile/settings/widget/language_widget.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppOptions options = AppOptions.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 110,
                right: 210,
                bottom: 48,
              ),
              child: Image.asset(
                'assets/png/status.png',
                width: 148,
                height: 132,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                textAlign: TextAlign.start,
                context.translate("language"),
                style: ThemeTextStyles.light.appBarTitle,
              ),
            ),
            LanguageItemWidget(
              isChecked: options.locale.languageCode == 'ru',
              text: AppLocalizations.of(context).translate("Russian"),
              flagName: 'ru',
              onTap: () {
                AppOptions.update(
                    context, options.copyWith(locale: const Locale("ru")));
                Navigator.pushReplacementNamed(context, Routes.main);
              },
            ),
            const Divider(),
            LanguageItemWidget(
              isChecked: options.locale.languageCode == 'en',
              text: AppLocalizations.of(context).translate("English"),
              flagName: 'en',
              onTap: () {
                AppOptions.update(
                    context, options.copyWith(locale: const Locale("en")));

                Navigator.pushReplacementNamed(context, Routes.main);
              },
            ),
            const Divider(),
            LanguageItemWidget(
              isChecked: options.locale.languageCode == 'uz',
              text: AppLocalizations.of(context).translate("Uzbek"),
              flagName: 'uz',
              onTap: () {
                AppOptions.update(
                    context, options.copyWith(locale: const Locale("uz")));
                Navigator.pushReplacementNamed(context, Routes.main);
              },
            ),
          ],
        ),
      ),
    );
  }
}
