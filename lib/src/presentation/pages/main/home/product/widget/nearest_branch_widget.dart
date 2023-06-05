import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class NearestBranchWidget extends StatefulWidget {
  const NearestBranchWidget({Key? key}) : super(key: key);

  @override
  State<NearestBranchWidget> createState() => _NearestBranchWidgetState();
}

class _NearestBranchWidgetState extends State<NearestBranchWidget> {
  String? gender1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        height: 380,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Padding(
              padding: AppUtils.kPaddingAll6,
              child: Text(
                "Ближайший филиал",
                style: ThemeTextStyles.light.bodyHeadline,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Image.asset(
                "assets/png/map.png",
                height: 156,
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Text(
                "Время доставка",
                style: ThemeTextStyles.light.regularHeadline,
              ),
            ),
            SizedBox(
              height: 60,
              child: ListTile(
                subtitle:  Text(
                  "SТашкент, 100000, Узбекистан",
                  style: ThemeTextStyles.light.regularSubheadline,
                ),
                leading: Image.asset("assets/png/restaurant.png"),
                title:  Text('Samarqand Darvoza',style: ThemeTextStyles.light.buttonStyle,),
                trailing: Radio(
                  activeColor: ThemeColors.light.primary,
                  value: "Да",
                  groupValue: gender1,
                  onChanged: (value) {
                    setState(() {
                      gender1 = value.toString();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListTile(
                subtitle:  Text(
                  "SТашкент, 100000, Узбекистан",
                  style: ThemeTextStyles.light.regularSubheadline,
                ),
                leading: Image.asset("assets/png/restaurant.png"),
                title:  Text('Sebzor', style: ThemeTextStyles.light.buttonStyle,),
                trailing: Radio(
                  activeColor: ThemeColors.light.primary,
                  value: "Нет",
                  groupValue: gender1,
                  onChanged: (value) {
                    setState(() {
                      gender1 = value.toString();
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
