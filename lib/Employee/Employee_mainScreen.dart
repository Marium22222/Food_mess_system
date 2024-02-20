import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nastp_mess_food_subscription/Employee/Employee_ScanCode.dart';
import 'package:nastp_mess_food_subscription/Employee/Employee_SubscriptionForm.dart';
import 'package:nastp_mess_food_subscription/Employee/Employee_calenderButtons.dart';
import 'package:nastp_mess_food_subscription/Employee/Employee_menuScreen.dart';
import 'package:nastp_mess_food_subscription/Employee/Employee_wallet.dart';
import 'package:nastp_mess_food_subscription/MESS/Subscriptions.dart';

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
      drawer: Drawer(
        child: Container(
          color: Colors.blue, // Set your desired background color
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Employee',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text(
                  'Subscription Form',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.to(EmployeeSubscriptionForm());
                },
              ),
              ListTile(
                leading: Icon(Icons.subscriptions, color: Colors.white),
                title: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.to(EmployeeMenuScreen());
                },
              ),
              ListTile(
                leading: Icon(Icons.menu_book_rounded, color: Colors.white),
                title: Text(
                  'Daily Status',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.to(EmployeeCalender());
                },
              ),
              ListTile(
                leading: Icon(Icons.wallet, color: Colors.white),
                title: Text(
                  'Bar Code Scan',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.to(EmployeeScan());
                },
              ),
              ListTile(
                leading: Icon(Icons.wallet, color: Colors.white),
                title: Text(
                  'Wallet',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.to(EmployeeWallet());
                },
              ),
            ],
          ),
        ),
      ),
//       body: GridView.count(
//         primary: false,
//         padding: const EdgeInsets.all(20),
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         crossAxisCount: 2,
//         children: <Widget>[
//           InkWell(
//             onTap: (){
// Get.to(EmployeeSubscriptionForm());
//             },
//             child: Container(
//               padding: const EdgeInsets.all(8),
//               color: Colors.teal[100],
//               child: const Text("Subscription Form"),
//             ),
//           ),
//     InkWell(
//             onTap: (){
//               Get.to(EmployeeMenuScreen());
//             },
//             child: Container(
//               padding: const EdgeInsets.all(8),
//               color: Colors.teal[200],
//               child: const Text('View Menu'),
//             ),
//           ),
//           InkWell(
//             onTap: (){
//               Get.to(EmployeeCalender());
//             },
//             child: Container(
//               padding: const EdgeInsets.all(8),
//               color: Colors.teal[300],
//               child: const Text('Daily Meal Status'),
//             ),
//           ),
//           InkWell(
//             onTap: (){},
//             child: Container(
//               padding: const EdgeInsets.all(8),
//               color: Colors.teal[400],
//               child: const Text('Scan Bar code'),
//             ),
//           ),
//
//         ],
//       ),
    );
  }
}
