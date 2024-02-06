import 'package:flutter/material.dart';

class EmployeeCalender extends StatefulWidget {
  const EmployeeCalender({super.key});

  @override
  State<EmployeeCalender> createState() => _EmployeeCalenderState();
}

class _EmployeeCalenderState extends State<EmployeeCalender> {
  List<bool> _buttonStates = List.generate(30, (index) => false);

  void _toggleButtonState(int index) {
    setState(() {
      _buttonStates[index] = !_buttonStates[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Calender"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7, // 7 columns for each day of the week
        ),
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              _toggleButtonState(index);
            },
            child: Container(
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: _buttonStates[index]
                    ? Icon(Icons.done) // Display tick mark if button is toggled
                    : Text(
                  (index + 1).toString(), // Display the day number
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
