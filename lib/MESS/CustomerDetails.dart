import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nastp_mess_food_subscription/MESS/wallet.dart';

class CustomerDetails extends StatefulWidget {
  const CustomerDetails({super.key});

  @override
  State<CustomerDetails> createState() => _CustomerDetailsState();
}

class _CustomerDetailsState extends State<CustomerDetails> {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomerDetails"),
      ),
      body:ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Container(
              decoration: BoxDecoration(
                color: Colors.blue[300], // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: Offset(0, 3), // Offset of the shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text("name"),
                  Text("number"),
                  Row(
                    children: [
                      Text("wallet balance"),
                      IconButton(onPressed: (){
                        Get.to(Wallet());
                      }, icon: Icon(Icons.wallet))
                    ],
                  ),
                  Text("type of subscription"),
                  // Text(items[index]),
                ],
              ),
            ),
            onTap: () {
              // Handle tap on ListTile
              print('Tapped on ${items[index]}');
            },
          );
        },
      ),

    );
  }
}
