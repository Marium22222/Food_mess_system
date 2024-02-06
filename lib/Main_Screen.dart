import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nastp_mess_food_subscription/Register_screen.dart';
import 'package:nastp_mess_food_subscription/login_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NASTP MESS FOOD MANAGEMENT"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: (){
              Get.to(LoginScreen());
            }, child: Text(
              "LOGIN"
            )),
            ElevatedButton(onPressed: (){
              Get.to(RegisterScreen());
            }, child: Text(
                "REGISTER"
            ))
          ],
        ),
      ),
    );
  }
}
