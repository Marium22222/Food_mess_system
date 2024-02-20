import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nastp_mess_food_subscription/MESS/CustomerDetails.dart';
import 'package:nastp_mess_food_subscription/MESS/MenuItems.dart';
import 'package:nastp_mess_food_subscription/MESS/Subscriptions.dart';
import 'package:nastp_mess_food_subscription/MESS/wallet.dart';

class MessMainScreen extends StatefulWidget {
  const MessMainScreen({super.key});

  @override
  State<MessMainScreen> createState() => _MessMainScreenState();
}

class _MessMainScreenState extends State<MessMainScreen> {
  double _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Mess Dashboard"),
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
                  'Mess Owner',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text(
                  'Customers',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.to(CustomerDetails());
                },
              ),
              ListTile(
                leading: Icon(Icons.subscriptions, color: Colors.white),
                title: Text(
                  'Subscription',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.to(Subscriptions());
                },
              ),
              ListTile(
                leading: Icon(Icons.menu_book_rounded, color: Colors.white),
                title: Text(
                  'Menus',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.to(MenuItems());
                },
              ),
              // ListTile(
              //   leading: Icon(Icons.wallet, color: Colors.white),
              //   title: Text(
              //     'Wallet',
              //     style: TextStyle(color: Colors.white),
              //   ),
              //   onTap: () {
              //     Get.to(Wallet());
              //   },
              // ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text("Main body"),
      ),
    );
  }
}
