import 'package:flutter/material.dart';

class EmployeeSubscriptionForm extends StatefulWidget {
  const EmployeeSubscriptionForm({super.key});

  @override
  State<EmployeeSubscriptionForm> createState() => _EmployeeSubscriptionFormState();
}

class _EmployeeSubscriptionFormState extends State<EmployeeSubscriptionForm> {
  String? _selectedValue;
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
                    )
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
