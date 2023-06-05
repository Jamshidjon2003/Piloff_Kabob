import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

import 'widget/data_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: const Text("Редактировать профиль"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          height: 292,
          width: double.infinity,
          decoration: const BoxDecoration( color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, bottom: 4 ),
                child: Text(
                  "Имя",
                  style: ThemeTextStyles.light.bodySubheadline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextFormField(
                  style: ThemeTextStyles.light.bodyFootnote,
                  decoration: const InputDecoration(
                    hintText: 'Усмонов Акбар',
                      hintStyle: TextStyle(color: Color(0xff2B2A28)),
                      fillColor: Color(0xffF5F5F5),
                      labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      )),
                  // controller: cpfcontroller,
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, bottom: 4),
                child: Text(
                  "Номер телефона",
                  style: ThemeTextStyles.light.bodySubheadline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextFormField(
                  style: ThemeTextStyles.light.bodyFootnote,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: "+99893 564 92 29",
                      labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      )),
                  // controller: cpfcontroller,
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, bottom: 4),
                child: Text(
                  "Ваш дата рождения",
                  style: ThemeTextStyles.light.bodySubheadline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextFormField(
                  style: ThemeTextStyles.light.bodyFootnote,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(suffixIcon: InkWell( onTap: (){
                    showModalBottomSheet(
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (_) {
                          return const DateWidget(
                              text: "Дата рождения", mode: CupertinoDatePickerMode.date);
                        });
                  },
                      child: const Icon(Icons.calendar_today_outlined),),
                      hintText: "11.09.1991",
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),),
                  // controller: cpfcontroller,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: ElevatedButton(onPressed: (){},child: const Text("Сохранить"),),
      ),
    );
  }
}
