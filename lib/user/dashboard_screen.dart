import 'package:flutter/material.dart';
import 'package:my_appp/user/PaymentScreen.dart';
import 'booking_screen.dart'; // Import the booking screen
import 'calendar_screen.dart'; // Import the calendar screen
import 'categories_screen.dart'; // Import the categories screen
import 'notification_screen.dart'; // Import the notification screen
import 'profile_screen.dart'; // Import the profile screen

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 1; // Default to home

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileScreen(),
            ),
          );
          break;
        case 1:
          // Home is the current screen
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NotificationScreen(),
            ),
          );
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 20, 20),
      appBar: AppBar(
        title: const Text(
          'DASHBOARD',
          style: TextStyle(
              fontSize: 24, fontFamily: 'SansitaSwashed'), // Adjust font style
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 10, 6, 6),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2, // Two columns
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            _buildDashboardItem(
              context,
              'My Booking',
              Icons.check_circle_outline,
              const BookingScreen(), // Navigate to BookingScreen
            ),
            _buildDashboardItem(
              context,
              'Categories',
              Icons.category,
              CategoriesScreen(), // Navigate to CategoriesScreen
            ),
            _buildDashboardItem(
              context,
              'Calendar',
              Icons.calendar_today,
              CalendarScreen(), // Navigate to CalendarScreen
            ),
            _buildDashboardItem(
              context,
              'Payment',
              Icons.payment,
              PaymentScreen(), // Navigate to PaymentScreen
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 202, 199, 199),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[700],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
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

  // Function to build each dashboard item with navigation
  Widget _buildDashboardItem(
      BuildContext context, String title, IconData icon, Widget? destination) {
    return GestureDetector(
      onTap: () {
        if (destination != null) {
          // Navigate to the provided destination (e.g., BookingScreen or CalendarScreen)
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 180, 172, 172),
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
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily:
                    'SansitaSwashed', // Adjust the font style if necessary
              ),
            ),
          ],
        ),
      ),
    );
  }
}
