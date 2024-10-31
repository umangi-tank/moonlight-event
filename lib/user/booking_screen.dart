import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 20, 20),
      appBar: AppBar(
        title: const Text(
          'MY BOOKING',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'SansitaSwashed',
            color: Colors.amber,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.amber),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // Align to the start (left) of the column
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // Align items to the start (left)
                  children: [
                    // Display the image at the top
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/wedding.jpg',
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Display the booking details below the image
                    Text(
                      'Name: umangi Tank\n'
                      'Type: Birthday Event\n'
                      'Phone No: 9081S15780\n'
                      'No. of People: 100\n'
                      'Ticket Type: VIP Ticket\n'
                      'Price: 4,000\n'
                      'Location: 150 ft. ring road\n',
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'SansitaSwashed',
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Booking Cancelled'),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SansitaSwashed',
                            fontSize: 16,
                          ),
                        ),
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
