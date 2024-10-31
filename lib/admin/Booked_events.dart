import 'package:flutter/material.dart';

void main() => runApp(BookingHistoryApp());

class BookingHistoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookingHistoryScreen(),
    );
  }
}

class BookingHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Booking History',
          style: TextStyle(
            fontFamily: 'Cursive',
            fontSize: 24,
            color: Color(0xFFFFD700),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          BookingCard(
            imagePath: 'assets/birthday1.jpg',
            name: 'Kotak Asha',
            type: 'Birthday Event',
            phone: '9081515780',
            people: '100',
            ticketType: 'VIP Ticket',
            price: '4,000',
            location: '150 ft. ring road',
          ),
          BookingCard(
            imagePath: 'assets/wedding.jpg',
            name: 'Gabu Daxa',
            type: 'Wedding Event',
            phone: '9104502650',
            people: '100',
            ticketType: 'VIP Ticket',
            price: '15,000',
            location: '150 ft. ring road',
          ),
          // Add more BookingCard widgets here as needed
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[850],
        selectedItemColor: Color(0xFFFFD700),
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
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

class BookingCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String type;
  final String phone;
  final String people;
  final String ticketType;
  final String price;
  final String location;

  BookingCard({
    required this.imagePath,
    required this.name,
    required this.type,
    required this.phone,
    required this.people,
    required this.ticketType,
    required this.price,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.grey[800],
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imagePath,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name: $name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Cursive',
                        ),
                      ),
                      Text(
                        'Type: $type',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Phone No: $phone',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'No. of People: $people',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Ticket Type: $ticketType',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Prize: $price',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Location: $location',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Accept'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Decline'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
