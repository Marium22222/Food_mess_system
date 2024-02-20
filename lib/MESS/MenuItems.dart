import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nastp_mess_food_subscription/MESS/addMenu.dart';
enum MealType {
  breakfast,
  lunch,
  dinner,
}
class MenuItems extends StatefulWidget {
  const MenuItems({super.key});

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  String _getMealText(MealType mealType) {
    switch (mealType) {
      case MealType.breakfast:
        return 'Breakfast';
      case MealType.lunch:
        return 'Lunch';
      case MealType.dinner:
        return 'Dinner';
      default:
        return '';
    }
  }
  MealType _selectedMealType = MealType.breakfast;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getMealText(_selectedMealType)+" "+"Menu"),

      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Get.to(AddMenu());
          }, child: Text("Add")),
          ElevatedButton(onPressed: (){}, child: Text("Update")),
          DropdownButton<MealType>(
            value: _selectedMealType,
            onChanged: (MealType? newValue) {
              setState(() {
                _selectedMealType = newValue!;
              });
            },
            items: MealType.values.map<DropdownMenuItem<MealType>>((MealType value) {
              return DropdownMenuItem<MealType>(
                value: value,
                child: Text(value.toString().split('.').last),
              );
            }).toList(),
          ),
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
                      title: Text(_getMealText(_selectedMealType)),
                      leading: Icon(Icons.food_bank),
            
                    ),
                  ),
                );
              },
            ),
          ),
          
        ],
      )
    );
  }
}
