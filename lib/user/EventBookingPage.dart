import 'package:flutter/material.dart';

// Updated EventBookingPage with Back Button and Form Validation
class EventBookingPage extends StatefulWidget {
  final String eventDescription;
  final String imagePath;

  EventBookingPage({
    required this.eventDescription,
    required this.imagePath,
  });

  @override
  _EventBookingPageState createState() => _EventBookingPageState();
}

class _EventBookingPageState extends State<EventBookingPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String numberOfPeople = '';
  String location = '';
  String ticketType = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 208, 208), // Set background color to gray
      appBar: AppBar(
        title: Text('EVENT BOOKING'),
        backgroundColor: Colors.grey[900], // Dark app bar
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Back button functionality
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Form key for validation
          child: ListView(
            children: [
              // Display the selected event image
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    widget.imagePath,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Display the selected event description
              Text(
                widget.eventDescription,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 24),
              // Booking form with validation
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) => name = value!,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onSaved: (value) => email = value!,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Number of People',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of people';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                onSaved: (value) => numberOfPeople = value!,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Location',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the location';
                  }
                  return null;
                },
                onSaved: (value) => location = value!,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ticket Type',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the ticket type';
                  }
                  return null;
                },
                onSaved: (value) => ticketType = value!,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Handle booking submission
                  }
                },
                child: Text('Confirm Booking'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 236, 187, 38),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
