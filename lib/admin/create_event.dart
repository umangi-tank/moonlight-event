import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CreateEventScreen(),
  ));
}

class CreateEventScreen extends StatefulWidget {
  @override
  _CreateEventScreenState createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  // Define a GlobalKey for the Form
  final _formKey = GlobalKey<FormState>();

  // Controllers for capturing text input
  final TextEditingController _eventNameController = TextEditingController();
  final TextEditingController _eventTypeController = TextEditingController();
  final TextEditingController _prizeController = TextEditingController();
  final TextEditingController _bookingTypeController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Create Event'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Assign form key
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Create Event',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[300],
                ),
              ),
              SizedBox(height: 20),
              _buildTextFormField('Event Name', _eventNameController, 'Please enter event name'),
              _buildTextFormField('Event Type', _eventTypeController, 'Please enter event type'),
              _buildTextFormField('Prize', _prizeController, 'Please enter prize'),
              _buildTextFormField('Booking Type', _bookingTypeController, 'Please enter booking type'),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: _buildTextFormField('Set Image', _imageController, 'Please select an image'),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement image picker
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      child: Text(
                        'Choose Image',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              _buildTextFormField('Location', _locationController, 'Please enter location'),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Validate form fields
                    if (_formKey.currentState!.validate()) {
                      // If form is valid, display a success message or perform actions
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Event created successfully')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text(
                    'Create',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
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

  // Function to build text form fields with validation
  Widget _buildTextFormField(
      String label, TextEditingController controller, String errorMessage) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.white70),
          filled: true,
          fillColor: Colors.grey[600],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return errorMessage; // Return the error message if the field is empty
          }
          return null;
        },
      ),
    );
  }
}
