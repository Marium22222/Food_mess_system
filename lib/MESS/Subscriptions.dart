import 'package:flutter/material.dart';

class Shift {
  final String name;
  final List<String> timings;

  Shift(this.name, this.timings);
}

class Subscriptions extends StatefulWidget {
  const Subscriptions({Key? key}) : super(key: key);

  @override
  State<Subscriptions> createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
  List<Shift> shifts = [
    Shift('Breakfast', ['8:00 AM - 10:00 AM', '9:00 AM - 11:00 AM', '10:00 AM - 12:00 PM']),
    Shift('Lunch', ['12:00 PM - 2:00 PM', '1:00 PM - 3:00 PM', '2:00 PM - 4:00 PM']),
    Shift('Dinner', ['7:00 PM - 9:00 PM', '8:00 PM - 10:00 PM', '9:00 PM - 11:00 PM']),
  ];

  List<bool> _selectedShifts = [false, false, false];
  List<String?> _selectedTimings = [null, null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subscription Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < shifts.length; i++)
              Column(
                children: [
                  CheckboxListTile(
                    title: Text(shifts[i].name),
                    value: _selectedShifts[i],
                    onChanged: (bool? value) {
                      setState(() {
                        _selectedShifts[i] = value!;
                        if (!_selectedShifts.contains(true)) {
                          // If no shift is selected, reset the timing
                          _selectedTimings = List<String?>.filled(_selectedShifts.length, null);
                        }
                      });
                    },
                  ),
                  if (_selectedShifts[i])
                    DropdownButton<String>(
                      value: _selectedTimings[i],
                      hint: Text('Select Timing'),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedTimings[i] = newValue;
                        });
                      },
                      items: shifts[i].timings.map<DropdownMenuItem<String>>((timing) {
                        return DropdownMenuItem<String>(
                          value: timing,
                          child: Text(timing),
                        );
                      }).toList(),
                    ),
                  SizedBox(height: 20),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
