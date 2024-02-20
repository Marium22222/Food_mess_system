import 'package:flutter/material.dart';

class EmployeeSubscriptionForm extends StatefulWidget {
  const EmployeeSubscriptionForm({super.key});

  @override
  State<EmployeeSubscriptionForm> createState() => _EmployeeSubscriptionFormState();
}

class _EmployeeSubscriptionFormState extends State<EmployeeSubscriptionForm> {
  String? _selectedValue;
  bool breakfastSelected = false;
  bool lunchSelected = false;
  bool dinnerSelected = false;
  String? selectedturn = 'Weekly';
  // String? selectedMeal = 'Breakfast';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscription Form'),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Form(
            // key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("1."),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter your name',
                                labelText: 'Name'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text("2."),
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
                        Text("3."),
                        Text("DO you want to subscribe the daily lunch"),
                        SizedBox(width: 10,),
                        Expanded(
                          child:
                            DropdownButton<String>(
                              value: _selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedValue = newValue;
                                });
                              },
                              items: <String>['Yes', 'No'].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            )
                        ),
                      ],
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text("4."),
                              Text("Please select shifts")
                            ],
                          ),
                          CheckboxListTile(
                            title: Text('Breakfast'),
                            value: breakfastSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                breakfastSelected = value!;
                              });
                            },
                          ),
                          CheckboxListTile(
                            title: Text('Lunch'),
                            value: lunchSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                lunchSelected = value!;
                              });
                            },
                          ),
                          CheckboxListTile(
                            title: Text('Dinner'),
                            value: dinnerSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                dinnerSelected = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Select Duration"),
                        Center(
                          child: DropdownButton<String>(
                            value: selectedturn,
                            onChanged: (String? newValue) { // Update the type to nullable
                              setState(() {
                                selectedturn = newValue;
                              });
                            },
                            items: <String>['Weekly', 'Monthly'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Submit"))
        ],
      ),

    );
  }
}
