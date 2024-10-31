import 'package:flutter/material.dart';
import 'package:my_appp/admin/Booked_events.dart';
import 'package:my_appp/admin/ManageEvent.dart';
import 'package:my_appp/admin/calender.dart';
import 'package:my_appp/admin/create_event.dart';
import 'package:my_appp/admin/feedbackscreen.dart';
import 'package:my_appp/admin/total_events.dart';
void main() => runApp(DashboardScreen());

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 1;

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 182, 181, 181),
          currentIndex: _selectedIndex, 
          selectedItemColor: Colors.amber, 
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
               ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
          ],
        ),
      ),
    );
  }
}

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text(
          'ADMIN DASHBOARD',
          style: TextStyle(
            fontFamily: 'SansitaSwashed',
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            DashboardItem(
              icon: Icons.list,
              label: 'MANAGE EVENTS',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageEventsScreen()),
                );
              },
            ),
            DashboardItem(
              icon: Icons.edit,
              label: 'CREATE NEW EVENTS',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateEventScreen()),
                );
              },
            ),
            DashboardItem(
              icon: Icons.person,
              label: 'TOTAL EVENTS',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TotalEventApp()),
                );
              },
            ),
            DashboardItem(
              icon: Icons.feedback,
              label: 'FEEDBACK',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackApp()),
                );
              },
            ),
            DashboardItem(
              icon: Icons.bookmark,
              label: 'BOOKED EVENT',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingHistoryApp()),
                );
              },
            ),
            DashboardItem(
              icon: Icons.calendar_today,
              label: 'CALENDAR',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const DashboardItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 212, 210, 210),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              
              size: 50,
              color: Colors.black,
            ),
            SizedBox(height: 10),
            Text(
              label,
              
              style: TextStyle(
                color: const Color.fromARGB(255, 8, 8, 8),
                fontSize: 18,
                fontFamily: 'SansitaSwashed',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
