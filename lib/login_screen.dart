import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nastp_mess_food_subscription/Employee/Employee_mainScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Enter your email',
                                    labelText: 'Email'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter your password',
                                  labelText: 'password',
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Login as MESS")),
              ElevatedButton(onPressed: () {}, child: Text("Login as Company")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(EmployeeMainScreen());
                  }, child: Text("Login as Employee")),
            ],
          ),
        ));
  }
}
