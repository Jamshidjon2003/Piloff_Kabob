import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(
      const Duration(seconds: 4),
          () {
        Navigator.pushReplacementNamed(context, Routes.language);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 200, left: 52, right: 52),
            child: Image(
              image: AssetImage('assets/png/logo.png'),
            ),
          ),
          Padding(
            padding: AppUtils.kPaddingAll6,
            child: SpinKitRing(color: Colors.black12,
                size: 50),
          ),

        ],
      ),

    );
  }
}
