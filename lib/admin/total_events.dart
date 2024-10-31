import 'package:flutter/material.dart';

void main() {
  runApp(TotalEventApp());
}

class TotalEventApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TotalEventsScreen(),
    );
  }
}

class TotalEventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text(
          'Total Events',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'TOTAL EVENTS',
                style: TextStyle(
                  color: Colors.orange[700],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    EventCard(
                      imageUrl: 'assets/birthday1.jpg',
                      description: 'EVENTS : BIRTHDAY\nBALLOON BLUE',
                    ),
                    EventCard(
                      imageUrl: 'assets/birthday2.jpg',
                      description: 'EVENTS : BIRTHDAY\nBALLOON PINK',
                    ),
                    EventCard(
                      imageUrl: 'assets/baby_shower.jpg',
                      description:
                          'EVENTS : BABY\nSHOWER WITH BLUE\nAND PINK THEME',
                    ),
                    EventCard(
                      imageUrl: 'assets/wedding.jpg',
                      description: 'EVENTS : WEDDING\nLIGHT WITH WHITE\nTHEME',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String imageUrl;
  final String description;

  EventCard({required this.imageUrl, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
