import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nastp_mess_food_subscription/Employee/Employee_menuScreen.dart';

class MessMenuForm extends StatefulWidget {
  const MessMenuForm({super.key});

  @override
  State<MessMenuForm> createState() => _MessMenuFormState();
}

class _MessMenuFormState extends State<MessMenuForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> inputs = List.generate(30, (index) => '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Upload Menu Screen")),
      body:Form(
      key: _formKey,
      child: ListView(
        children: List.generate(30, (index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Input ${index + 1}',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onChanged: (value) {
                inputs[index] = value;
              },
            ),
          );
        }),
      ),
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: () {
    if (_formKey.currentState!.validate()) {
  Get.to(EmployeeMenuScreen(inputs: inputs));
    }
    },
    child: Icon(Icons.save),
    ),

    );
  }
}
