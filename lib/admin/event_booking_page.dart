import 'package:flutter/material.dart';

void main() {
  runApp(EventBookingPage());
}

class EventBookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookingForm(),
    );
  }
}

class BookingForm extends StatefulWidget {
  @override
  _BookingFormState createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  final _formKey = GlobalKey<FormState>();

  // Form field controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _peopleController = TextEditingController();
  final TextEditingController _packageController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  String? _eventType;
  String? _ticketType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D2D2D),
      appBar: AppBar(
        title: Text('Booking'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              buildTextFormField(
                controller: _nameController,
                icon: Icons.person,
                label: 'Name',
              ),
              buildDropdownField(
                value: _eventType,
                icon: Icons.event,
                label: 'Event Type',
                items: ['Concert', 'Conference', 'Wedding', 'Party'],
                onChanged: (String? newValue) {
                  setState(() {
                    _eventType = newValue;
                  });
                },
              ),
              buildTextFormField(
                controller: _phoneController,
                icon: Icons.phone,
                label: 'Phone Number',
                keyboardType: TextInputType.phone,
              ),
              buildTextFormField(
                controller: _peopleController,
                icon: Icons.people,
                label: 'No. Of People',
                keyboardType: TextInputType.number,
              ),
              buildDropdownField(
                value: _ticketType,
                icon: Icons.confirmation_number,
                label: 'Ticket Type',
                items: ['Standard', 'VIP', 'Premium'],
                onChanged: (String? newValue) {
                  setState(() {
                    _ticketType = newValue;
                  });
                },
              ),
              buildTextFormField(
                controller: _packageController,
                icon: Icons.card_giftcard,
                label: 'Package Prize',
              ),
              buildTextFormField(
                controller: _locationController,
                icon: Icons.location_on,
                label: 'Location',
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFCC9A1A), // Background color
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process the booking
                  }
                },
                child: Text(
                  'Book',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextFormField({
    required TextEditingController controller,
    required IconData icon,
    required String label,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.white),
          labelText: label,
          labelStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: Color(0xFF9E9E9E),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          return null;
        },
      ),
    );
  }

  Widget buildDropdownField({
    required String? value,
    required IconData icon,
    required String label,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        value: value,
        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
        dropdownColor: Color(0xFF9E9E9E),
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.white),
          labelText: label,
          labelStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: Color(0xFF9E9E9E),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please select $label';
          }
          return null;
        },
      ),
    );
  }
}
