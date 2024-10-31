import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: EditEventScreen(),
  ));
}

class EditEventScreen extends StatefulWidget {
  @override
  _EditEventScreenState createState() => _EditEventScreenState();
}

class _EditEventScreenState extends State<EditEventScreen> {
  // Define a GlobalKey for the Form
  final _formKey = GlobalKey<FormState>();

  // Controllers to hold input data
  final TextEditingController _eventNameController = TextEditingController();
  final TextEditingController _eventTypeController = TextEditingController();
  final TextEditingController _prizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900], // Set the background color
      appBar: AppBar(
        title: Text('Edit Event'),
        backgroundColor: Colors.grey[850], // Match the background color
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Assign the form key
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Edit Event',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.orange[300], // Matching color to the design
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              _buildTextFormField(
                'Event Name', 
                _eventNameController, 
                'Please enter the event name',
              ),
              SizedBox(height: 20),
              _buildTextFormField(
                'Event Type', 
                _eventTypeController, 
                'Please enter the event type',
              ),
              SizedBox(height: 20),
              _buildTextFormField(
                'Prize', 
                _prizeController, 
                'Please enter the prize',
              ),
              SizedBox(height: 20),
              _buildImagePicker(),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Validate the form
                  if (_formKey.currentState!.validate()) {
                    // If all fields are valid, show a success message or perform actions
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Saving changes...')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber, // Button color
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Save Changes',
                  style: TextStyle(
                    color: Colors.black, // Button text color
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build text form fields with validation
  Widget _buildTextFormField(
      String label, TextEditingController controller, String errorMessage) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.orange[200], // Label color
        ),
        filled: true,
        fillColor: Colors.grey[700], // Background color of TextField
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
      ),
      // Validator checks if the field is empty
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage;
        }
        return null;
      },
    );
  }

  // Function to build the image picker row
  Widget _buildImagePicker() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // Set image functionality
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[700],
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(
              'Set Image',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // Image choosing functionality
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[500],
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(
              'Choose Image',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
