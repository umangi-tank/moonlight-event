import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D2D2D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Avatar
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.png'), // Replace with your avatar image path
              backgroundColor: Colors.grey[800],
            ),
            SizedBox(height: 30),
            // First Name Field
            buildProfileField(
              icon: Icons.person,
              labelText: 'First Name',
            ),
            // Last Name Field
            buildProfileField(
              icon: Icons.person,
              labelText: 'Last Name',
            ),
            // Mobile Number Field
            buildProfileField(
              icon: Icons.phone,
              labelText: 'Mobile Number',
            ),
            // Date of Birth Field
            buildProfileField(
              icon: Icons.calendar_today,
              labelText: 'Date Of Birth',
            ),
            SizedBox(height: 30),
            // Edit Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFCC9A1A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              ),
              onPressed: () {
                // Handle edit button press
              },
              child: Text(
                'EDIT',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable Profile Field Widget
  Widget buildProfileField({required IconData icon, required String labelText}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.black),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
          filled: true,
          fillColor: Colors.grey[300],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
