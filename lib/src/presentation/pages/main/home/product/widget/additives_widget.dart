import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/presentation/pages/main/home/product/widget/counter_widget.dart';

class AdditivesToWidget extends StatefulWidget {
  const AdditivesToWidget({Key? key}) : super(key: key);

  @override
  State<AdditivesToWidget> createState() => AdditivesWidgetState();
}

class AdditivesWidgetState extends State<AdditivesToWidget> {
  String? gender1;
  String? gender2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: double.infinity,
        height: 102,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Text(
                "Добавки к плову",
                style: ThemeTextStyles.light.regularHeadline,
              ),
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.light.primary,
              title:  Text(
                "Яйцо*",
                style: ThemeTextStyles.light.features,
              ),
              value: "Яйцо*",
              groupValue: gender1,
              onChanged: (value) {
                setState(() {
                  gender1 = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GroupWidget extends StatefulWidget {
  const GroupWidget({Key? key}) : super(key: key);

  @override
  State<GroupWidget> createState() => _GroupWidgetState();
}

class _GroupWidgetState extends State<GroupWidget> {
  String? gender1;
  String? gender2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: double.infinity,
        height: 434,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Text(
                "Гуруппа модефикаторов",
                style: ThemeTextStyles.light.regularHeadline,
              ),
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.light.primary,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    "Яйцо*",
                    style: ThemeTextStyles.light.features,
                  ),
                  Text(
                    "0 sum",
                    style: ThemeTextStyles.light.regularSubheadline,
                  ),
                ],
              ),
              value: "Яйцо*",
              groupValue: gender1,
              onChanged: (value) {
                setState(() {
                  gender1 = value.toString();
                });
              },
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.light.primary,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    "Томат",
                    style: ThemeTextStyles.light.features,
                  ),
                  Text(
                    "+500 sum",
                    style: ThemeTextStyles.light.regularSubheadline,
                  ),
                ],
              ),
              value: "Томат",
              groupValue: gender1,
              onChanged: (value) {
                setState(() {
                  gender1 = value.toString();
                });
              },
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.light.primary,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    "Пакет",
                    style: ThemeTextStyles.light.features,
                  ),
                  Text(
                    "20 000 sum",
                    style: ThemeTextStyles.light.regularSubheadline,
                  ),
                ],
              ),
              value: "Пакет",
              groupValue: gender2,
              onChanged: (value) {
                setState(() {
                  gender2 = value.toString();
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: CounterWidget(),
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.light.primary,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    "Чой",
                    style: ThemeTextStyles.light.features,
                  ),
                  Text(
                    "+500 sum",
                    style: ThemeTextStyles.light.regularSubheadline,
                  ),
                ],
              ),
              value: "Чой",
              groupValue: gender2,
              onChanged: (value) {
                setState(() {
                  gender2 = value.toString();
                });
              },
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.light.primary,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    "Лука",
                    style: ThemeTextStyles.light.features,
                  ),
                  Text(
                    "+500 sum",
                    style: ThemeTextStyles.light.regularSubheadline,
                  ),
                ],
              ),
              value: "Лука",
              groupValue: gender2,
              onChanged: (value) {
                setState(() {
                  gender2 = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
