import 'package:flutter/material.dart';

void main() {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('PROFILE', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/avatar.png'), // Add your avatar image here
            ),
            SizedBox(height: 20),
            buildTextField(Icons.person, 'Umangi Tank'),
            SizedBox(height: 10),
            buildTextField(Icons.local_activity_outlined,
                '"Shree laxmi narayan" behind ranuja temple-Rajkot'),
            SizedBox(height: 10),
            buildTextField(Icons.phone, '+91 91739 14174'),
            SizedBox(height: 10),
            buildTextField(Icons.calendar_today, '12 April, 2005'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.brown[600], // Background color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(IconData icon, String hintText) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.black),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black54),
        filled: true,
        fillColor: Colors.grey[300],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
