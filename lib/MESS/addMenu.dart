import 'package:flutter/material.dart';

class AddMenu extends StatefulWidget {
  const AddMenu({super.key});

  @override
  State<AddMenu> createState() => _AddMenuState();
}

class _AddMenuState extends State<AddMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Menu"),

      ),
      body: ListView.builder(
    itemCount: 30,
    itemBuilder: (BuildContext context, int index) {
    return Padding(
    padding: EdgeInsets.all(8.0),
    child: TextField(
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Input your choice',
    ),
    ),
    );
    },
    ));
  }
}
