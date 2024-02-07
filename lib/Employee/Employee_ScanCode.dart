import 'package:flutter/material.dart';

class EmployeeScanBarCode extends StatefulWidget {
  const EmployeeScanBarCode({super.key});

  @override
  State<EmployeeScanBarCode> createState() => _EmployeeScanBarCodeState();
}

class _EmployeeScanBarCodeState extends State<EmployeeScanBarCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan Code"),

      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border(

          )
        ),
        child: Icon(Icons.account_box),
      ),
    );
  }
}
