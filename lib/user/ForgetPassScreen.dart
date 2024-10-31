import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() => runApp(ForgetPasswordApp());

class ForgetPasswordApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgetPasswordScreen(),
    );
  }
}

class ForgetPasswordScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850], // Background color as seen in image
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Forget Password Title
              Text(
                'FORGET PASSWORD',
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 153, 100, 9),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              
              // Instruction Text
              Text(
                'Please enter your email address to check for the reset link',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              
              // Email Input Field
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 82, 80, 80), // Light grey color for the input field
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white, // Email icon color
                    ),
                    hintText: 'Email Id',
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
              ),
              SizedBox(height: 30),
              
              // Send Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 153, 100, 9), // Button color
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // Handle Send button press
                  print('Send button pressed. Email: ${_emailController.text}');
                },
                child: Text(
                  'Send',
                  style: TextStyle(
                    color: Colors.black, // Text color inside button
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
