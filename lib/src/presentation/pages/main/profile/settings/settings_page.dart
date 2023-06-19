import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/presentation/pages/main/profile/settings/widget/language_widget.dart';
import 'package:ploff_final/src/presentation/pages/splash/language_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool switchValue = true;
  bool switchValue1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          "Настройки",
          style: ThemeTextStyles.light.regularHeadline,
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return  const LanguagesWidget();
                  });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                width: double.infinity,
                height: 64,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset("assets/png/world.png"),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Text(
                            "Язык",
                            style: ThemeTextStyles.light.bodySubheadline,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Color(0xff818C99)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 64,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset("assets/png/notification.png"),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Text(
                        "Уведомлений",
                        style: ThemeTextStyles.light.bodySubheadline,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Transform.scale(
                    scale: 0.8,
                    child: CupertinoSwitch(
                      value: switchValue1,
                      activeColor: ThemeColors.light.primary,
                      onChanged: (bool? value) {
                        setState(() {
                          switchValue1 = value ?? false;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
