import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nastp_mess_food_subscription/MESS/MESS_MenuForm.dart';
import 'package:nastp_mess_food_subscription/MESS/Mess_MealCount.dart';

class MessMainScreen extends StatefulWidget {
  const MessMainScreen({super.key});

  @override
  State<MessMainScreen> createState() => _MessMainScreenState();
}

class _MessMainScreenState extends State<MessMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mess Main Screen"),
        centerTitle: true,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          InkWell(
            onTap: (){

            },
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text("Check Subscription "),
            ),
          ),
          InkWell(
            onTap: (){
           Get.to(MessMenuForm());
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: const Text('Upload Menu'),
            ),
          ),
          InkWell(
            onTap: (){
Get.to(MessMealCount());
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Text('Daily Meal Eater Count'),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[400],
              child: const Text(''),
            ),
          ),

        ],
      ),
    );
  }
}
