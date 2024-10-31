import 'package:flutter/material.dart';
import 'package:my_appp/admin/dashboard_screen.dart';
import 'package:my_appp/admin/Booked_events.dart';
import 'package:my_appp/admin/ManageEvent.dart';
import 'package:my_appp/admin/calender.dart';
import 'package:my_appp/admin/create_event.dart';
import 'package:my_appp/admin/feedbackscreen.dart';
import 'package:my_appp/admin/total_events.dart';


void main() => runApp(LoginScreen());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ADMIN LOGIN',
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 151, 120, 46),
                fontFamily: 'Cursive',
              ),
            ),
            SizedBox(height: 40),
            // Username Field
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Your Name',
                  hintStyle: TextStyle(color: Colors.white70),
                  prefixIcon: Icon(Icons.person, color: Colors.white70),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Password Field
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white70),
                  prefixIcon: Icon(Icons.lock, color: Colors.white70),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Login Button
            ElevatedButton(
              onPressed: () {
                // Navigate to DashboardScreen when login button is pressed
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 151, 120, 46),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'ADMIN LOGIN',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Or Connect With',
              style: TextStyle(color: Color.fromARGB(255, 151, 120, 46)),
            ),
            SizedBox(height: 10),
            // Google Icon Button
            IconButton(
              icon: Icon(Icons.login,
                  size: 50,
                  color: Color.fromARGB(255, 151, 120,
                      46)), // You can replace it with the Google icon
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
