import 'package:flutter/material.dart';
import 'package:my_appp/user/EventBookingPage.dart';
import 'dashboard_screen.dart';

void main() => runApp(CategoriesScreen());

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EventCategoriesPage(),
    );
  }
}

class EventCategoriesPage extends StatelessWidget {
  final List<Map<String, String>> events = [
    {
      'image': 'assets/birthday1.jpg',
      'description': 'EVENT: Birthday Balloon Blue.\nPackage: 5000 RS.'
    },
    {
      'image': 'assets/birthday2.jpg',
      'description': 'EVENT: Birthday Balloon Pink.\nPackage: 5000 RS.'
    },
    {
      'image': 'assets/baby_shower.jpg',
      'description': 'EVENT: Baby Shower Balloon.\nPackage: 5000 RS.'
    },
    {
      'image': 'assets/wedding.jpg',
      'description': 'EVENT: Wedding Ceremony.\nPackage: 10000 RS.'
    },
    {
      'image': 'assets/wedding.jpg',
      'description': 'EVENT: Shop Opening \nPackage: 10000 RS.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850], // Dark background
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Back button functionality
          },
        ),
        title: Text(
          'EVENT CATEGORIES',
          style: TextStyle(
            fontSize: 24,
            color: Colors.amber,
          ),
        ),
        backgroundColor: Colors.grey[900], // Dark app bar
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: events.length,
        itemBuilder: (context, index) {
          return EventCard(
            imagePath: events[index]['image']!,
            description: events[index]['description']!,
            onBookPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventBookingPage(
                    eventDescription: events[index]['description']!,
                    imagePath: events[index]['image']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String imagePath;
  final String description;
  final VoidCallback onBookPressed;

  EventCard({
    required this.imagePath,
    required this.description,
    required this.onBookPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Card(
        color: Colors.grey[300], // Light card background
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Row(
          children: [
            // Event Image
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              child: Image.asset(
                imagePath,
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            // Event Description and Button
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: onBookPressed, // Trigger navigation
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber, // Button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text('Book'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
