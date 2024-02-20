import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nastp_mess_food_subscription/Main_Screen.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:thegorgeousotp/models/tailor.dart';
// import 'package:thegorgeousotp/pages/auth/login_page.dart';
// import 'package:thegorgeousotp/services/shared_preferences.dart';
// import 'package:thegorgeousotp/stores/login_store.dart';
// import 'package:thegorgeousotp/utils/queries/query_customer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // final Pref prefs = Pref();

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8), () {
      Get.to(MainScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Opacity(
                opacity: 0.4,
                child: Container(
                  height: screenHeight * 0.4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: screenHeight * 0.2,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).secondaryHeaderColor,
                          Theme.of(context).primaryColor,
                        ],
                        tileMode: TileMode.mirror,
                      ).createShader(bounds);
                    },
                    child: Text(
                      'Food Saviour',
                      style:TextStyle(
                        fontSize: 40,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Mess food management at your fingertips',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


