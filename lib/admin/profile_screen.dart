import 'package:flutter/material.dart';

// Create a placeholder ProfileScreen
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Profile Information',
          style: TextStyle(fontSize: 24, color: Colors.orange[300]),
        ),
      ),
    );
  }
}




