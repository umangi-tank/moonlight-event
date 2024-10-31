import 'package:flutter/material.dart';
import 'package:my_appp/admin/dashboard_screen.dart';
import 'package:my_appp/admin/login_screen.dart';
import 'package:my_appp/user/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RoleSelectScreen(),
      routes: {
        'admin': (context) => DashboardScreen(), // Route for Admin screen
        'user': (context) => DashboardScreen(), // Route for User screen
      },
    );
  }
}

class RoleSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey[900], // Background color similar to your design
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoleButton(
              icon: Icons.admin_panel_settings,
              label: "ADMIN",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          LoginApp()), // Navigate to Admin LoginScreen
                );
              },
            ),
            SizedBox(height: 40), // Space between the buttons
            RoleButton(
              icon: Icons.admin_panel_settings,
              label: "USER",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          loginScreenApp()), // Navigate to Admin LoginScreen
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RoleButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  RoleButton({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFA67C00), // Color similar to the buttons in the image
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.black,
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Cursive', // Match the font style
              ),
            ),
          ],
        ),
      ),
    );
  }
}
