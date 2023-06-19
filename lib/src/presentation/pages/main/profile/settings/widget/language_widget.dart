import 'package:flutter/material.dart';
import 'package:ploff_final/src/app_options.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/core/extension/extension.dart';
import 'package:ploff_final/src/core/l10n/app_localizations.dart';

class LanguagesWidget extends StatelessWidget {
  const LanguagesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppOptions options = AppOptions.of(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16,bottom: 16),
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
            Navigator.pop(context);
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

            Navigator.pop(context);
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
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

class LanguageItemWidget extends StatelessWidget {
  final String? flagName;
  final String text;
  final Function()? onTap;
  final bool isChecked;

  const LanguageItemWidget({
    Key? key,
    required this.text,
    this.onTap,
    this.isChecked = false,
    this.flagName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 24,
      minVerticalPadding: 0,
      horizontalTitleGap: 12,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      onTap: onTap,
      leading: Image.asset("assets/png/$flagName.png", width: 32, height: 32,),
      title: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          text, style: ThemeTextStyles.light.buttonStyle,
        ),
      ),
      trailing: Visibility(
        visible: isChecked,
        child: Image.asset(
          "assets/png/check.png",
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
