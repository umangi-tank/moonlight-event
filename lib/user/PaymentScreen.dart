import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAYMENT'),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Payment Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
