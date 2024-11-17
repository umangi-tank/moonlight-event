import 'package:flutter/material.dart';
import 'package:project/screen/CategoryScreen.dart';
import 'package:project/screen/MyBookingScreen.dart';
import 'package:project/screen/PaymentScreen.dart';
import 'package:project/screen/CalendarScreen.dart';
import 'package:project/screen/ProfileScreen.dart';
import 'package:project/screen/NotificationScreen.dart'; 


class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            fontFamily: 'Cursive',
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey[400],
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildDashboardItem(context, Icons.bookmark, 'My Booking', MyBookingScreen()),
            _buildDashboardItem(context, Icons.category, 'Categories', Categoryscreen()),
            _buildDashboardItem(context, Icons.calendar_today, 'Calendar', CalendarScreen()),
            _buildDashboardItem(context, Icons.payment, 'Payment', PaymentScreen()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[400],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          if (index == 0) {
            // Navigate to Profile screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          } else if (index == 2) {
            // Navigate to Notification screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationApp()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context, IconData iconData, String label, Widget? targetPage) {
    return GestureDetector(
      onTap: () {
        if (targetPage != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => targetPage),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, size: 50, color: Colors.black),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(fontFamily: 'Cursive', color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
