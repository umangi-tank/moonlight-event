import 'package:flutter/material.dart';
import 'event_booking_page.dart'; 

class Categoryscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Categories'),
          backgroundColor: Colors.grey[900],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Go back to the previous screen
            },
          ),
        ),
        body: Container(
          color: Colors.amber[700],
          child: ListView(
            children: [
              CategoryItem(
                imagePath: 'assets/event1.jpg', // Replace with your image paths
                title: 'EVENTS: BIRTHDAY BALLOON BLUE',
                onBook: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventBookingPage()),
                  );
                },
              ),
              CategoryItem(
                imagePath: 'assets/event2.jpg',
                title: 'EVENTS: BIRTHDAY BALLOON BLUE',
                onBook: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventBookingPage()),
                  );
                },
              ),
              CategoryItem(
                imagePath: 'assets/event3.jpg',
                title: 'EVENTS: BABY SHOWER BALLOON BLUE',
                onBook: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventBookingPage()),
                  );
                },
              ),
              CategoryItem(
                imagePath: 'assets/event4.jpg',
                title: 'EVENTS: BIRTHDAY BALLOON BLUE',
                onBook: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventBookingPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onBook;

  CategoryItem({required this.imagePath, required this.title, required this.onBook});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: onBook, // Trigger the onBook function
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Book'),
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
