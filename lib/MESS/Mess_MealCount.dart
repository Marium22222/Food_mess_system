import 'package:flutter/material.dart';

class MessMealCount extends StatefulWidget {
  const MessMealCount({super.key});

  @override
  State<MessMealCount> createState() => _MessMealCountState();
}

class _MessMealCountState extends State<MessMealCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal Count"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Total number of people having breakfast are",style: TextStyle(

            fontSize: 20),textAlign: TextAlign.center,),
            Container(
              child: Text("60",style: TextStyle(
                fontFamily: "Times New Roman",
                fontWeight: FontWeight.bold,
                fontSize: 50
              ),),
            ),
            Text("Total number of people having lunch are",style: TextStyle(

                fontSize: 20),textAlign: TextAlign.center,),
            Container(
              child: Text("60",style: TextStyle(
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.bold,
                  fontSize: 50
              ),),
            ),
            Text("Total number of people having Dinner are",style: TextStyle(

                fontSize: 20),textAlign: TextAlign.center,),
            Container(
              child: Text("60",style: TextStyle(
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.bold,
                  fontSize: 50
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
