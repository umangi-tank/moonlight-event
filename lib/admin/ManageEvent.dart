import 'package:flutter/material.dart';
import 'package:my_appp/admin/edit_eventScreen.dart';


void main() {
  runApp(MaterialApp(
    home: ManageEventsScreen(),
  ));
}

class ManageEventsScreen extends StatelessWidget {
  final List<Map<String, String>> events = [
    {
      'image': 'assets/birthday1.jpg',
      'title': 'EVENTS: BIRTHDAY BALLOON BLUE',
    },
    {
      'image': 'assets/birthday2.jpg',
      'title': 'EVENTS: BIRTHDAY BALLOON PINK',
    },
    {
      'image': 'assets/baby_shower.jpg',
      'title': 'EVENTS: BABY SHOWER WITH BLUE AND PINK THEME',
    },
    {
      'image': 'assets/wedding.jpg',
      'title': 'EVENTS: WEDDING LIGHT WITH WHITE THEME',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Manage Events'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              '',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.orange[300],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return EventCard(
                    image: events[index]['image']!,
                    title: events[index]['title']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[800],
        selectedItemColor: Colors.orange[300],
        unselectedItemColor: Colors.white,
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
}

class EventCard extends StatelessWidget {
  final String image;
  final String title;

  EventCard({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to EditEventScreen and pass the title
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditEventScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        child: Text('Edit'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Add delete functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        child: Text('Delete'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
