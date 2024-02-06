import 'package:flutter/material.dart';

class EmployeeMenuScreen extends StatefulWidget {
  const EmployeeMenuScreen({super.key});

  @override
  State<EmployeeMenuScreen> createState() => _EmployeeMenuScreenState();
}

class _EmployeeMenuScreenState extends State<EmployeeMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        centerTitle: true,

      ),
      body: Column(
        children: [
      Expanded(
        child: ListView.builder(
        itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                  border: Border(
                  bottom: BorderSide(
                  color: Colors.grey, // Border color
                  width: 1.0, // Border width
              ),
                  ),
                  ),
                child: ListTile(
                  title: Text("Menu Day1"),
                  leading: Icon(Icons.food_bank),

                ),
              ),
            );
          },
        ),
      ),]
      ),
    );
  }
}
