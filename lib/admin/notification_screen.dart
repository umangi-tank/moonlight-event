import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 20, 20),
      appBar: AppBar(
        title: const Text(
          'NOTIFICATIONS',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'SansitaSwashed',
            color: Colors.amber,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 10, 6, 6),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // Add your notification items here
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Notification : YEHHHH !!! In after Diwali offerrs',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'SansitaSwashed',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Notification: 90% Discount on All Events',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'SansitaSwashed',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
