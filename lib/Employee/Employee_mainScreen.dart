import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nastp_mess_food_subscription/Employee/Employee_SubscriptionForm.dart';
import 'package:nastp_mess_food_subscription/Employee/Employee_calenderButtons.dart';
import 'package:nastp_mess_food_subscription/Employee/Employee_menuScreen.dart';

class EmployeeMainScreen extends StatefulWidget {
  const EmployeeMainScreen({super.key});

  @override
  State<EmployeeMainScreen> createState() => _EmployeeMainScreenState();
}

class _EmployeeMainScreenState extends State<EmployeeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Main Screen"),
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
Get.to(EmployeeSubscriptionForm());
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text("Subscription Form"),
            ),
          ),
    InkWell(
            onTap: (){
              Get.to(EmployeeMenuScreen());
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: const Text('View Menu'),
            ),
          ),
          InkWell(
            onTap: (){
              Get.to(EmployeeCalender());
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Text('Daily Meal Status'),
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
