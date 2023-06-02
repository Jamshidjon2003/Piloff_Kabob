import 'package:flutter/material.dart';
import 'package:ploffe_kebab/src/core/extension/extension.dart';
import 'package:ploffe_kebab/src/injector_container.dart';
import 'package:ploffe_kebab/src/data/source/local_source.dart';
import 'package:ploffe_kebab/src/app_options.dart';
import 'package:ploffe_kebab/src/presentation/components/bottom_sheet/custom_bottom_sheet.dart';

import 'widgets/language_bottom_widget.dart';
import 'widgets/theme_bottom_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = AppOptions.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: AppUtils.kBorderRadius16,
          child: Material(
            color: Theme.of(context).cardColor,
            shape: const RoundedRectangleBorder(
              borderRadius: AppUtils.kBorderRadius16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    customModalBottomSheet(
                      context: context,
                      builder: (_, controller) {
                        return LanguageBottomWidget(
                          onChanged: (lang) async {
                            AppOptions.update(
                              context,
                              options.copyWith(locale: Locale(lang)),
                            );
                            Navigator.pop(context);
                            await sl<LocalSource>().setLocale(lang);
                          },
                        );
                      },
                    );
                  },
                  title: const Text('Language'),
                ),
                AppUtils.kDivider,
                ListTile(
                  onTap: () {
                    customModalBottomSheet(
                      context: context,
                      builder: (_, __) {
                        return ThemeBottomWidget(
                          onChanged: (mode) async {
                            AppOptions.update(
                              context,
                              options.copyWith(themeMode: mode),
                            );
                            Navigator.pop(context);
                            await sl<LocalSource>().setThemeMode(mode);
                          },
                        );
                      },
                    );
                  },
                  title: const Text('Theme'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}