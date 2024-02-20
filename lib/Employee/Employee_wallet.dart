import 'package:flutter/material.dart';
class Transaction {
  final double amount;
  final String description;
  final DateTime date;

  Transaction({
    required this.amount,
    required this.description,
    required this.date,
  });
}
class EmployeeWallet extends StatefulWidget {
  @override
  _EmployeeWalletState createState() => _EmployeeWalletState();
}

class _EmployeeWalletState extends State<EmployeeWallet> {
  // Dummy data for wallet balance and transactions
  double _walletBalance = 200.0;
  List<Transaction> _transactions = [
    Transaction(amount: 30.0, description: 'Lunch', date: DateTime.now()),
    Transaction(amount: 50.0, description: 'Breakfast', date: DateTime.now()),
    Transaction(amount: 20.0, description: 'Dinner', date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Wallet'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallet Balance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10.0),
                Text(
                  '$_walletBalance Rs',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _transactions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                      Icons.remove),
                  title: Text(_transactions[index].description),
                  subtitle: Text(_transactions[index].date.toString()),
                  trailing: Text(
                    '${_transactions[index].amount.toString()} Rs',
                    style: TextStyle(
                      color:  Colors.red,
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




