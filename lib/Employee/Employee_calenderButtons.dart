import 'package:flutter/material.dart';

enum Meal { Breakfast, Lunch, Dinner }

class EmployeeCalender extends StatefulWidget {
  const EmployeeCalender({Key? key}) : super(key: key);

  @override
  State<EmployeeCalender> createState() => _EmployeeCalenderState();
}

class _EmployeeCalenderState extends State<EmployeeCalender> {
  Map<Meal, List<bool>> _buttonStates = {
    Meal.Breakfast: List.generate(30, (index) => false),
    Meal.Lunch: List.generate(30, (index) => false),
    Meal.Dinner: List.generate(30, (index) => false),
  };
  Meal _selectedMeal = Meal.Breakfast;

  void _toggleButtonState(Meal meal, int index) {
    setState(() {
      _buttonStates[meal]![index] = !_buttonStates[meal]![index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Calendar"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          DropdownButton<Meal>(
            value: _selectedMeal,
            onChanged: (Meal? newValue) {
              setState(() {
                _selectedMeal = newValue!;
              });
            },
            items: Meal.values.map((Meal meal) {
              return DropdownMenuItem<Meal>(
                value: meal,
                child: Text(meal.toString().split('.').last),
              );
            }).toList(),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7, // 7 columns for each day of the week
              ),
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    _toggleButtonState(_selectedMeal, index);
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: _buttonStates[_selectedMeal]![index]
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
          ),
        ],
      ),
    );
  }
}
