import 'package:flutter/material.dart';
import 'dashboard_screen.dart'; // Ensure this file exists and imports correctly
import 'ForgetPassScreen.dart';
import 'RegistrationScreen.dart';

 void main() => runApp(loginScreenApp());

class loginScreenApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  void _login() {
    if (_formKey.currentState!.validate()) {
      // TODO: Implement actual login logic (e.g., API call, local storage)
      print('Login successful!');
      print('Username: ${_usernameController.text}');
      print('Password: ${_passwordController.text}');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'USER LOGIN',
                  style: TextStyle(
                    color: Color.fromARGB(255, 107, 71, 8),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: _usernameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Your Name",
                      hintStyle: TextStyle(color: Colors.white54),
                      prefixIcon: Icon(Icons.person, color: Colors.white54),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(15),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: _obscureText,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white54),
                      prefixIcon: Icon(Icons.lock, color: Colors.white54),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color.fromARGB(137, 252, 251, 251),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(15),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPasswordScreen()),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 107, 71, 8),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 107, 71, 8),
                    padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: _login,
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 249, 249, 249),
                        fontSize: 18),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Do you have any account?",
                  style: TextStyle(color: Color.fromARGB(255, 107, 71, 8)),
                ),
                TextButton(
                  onPressed: () {
                    var push = Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Color.fromARGB(255, 107, 71, 8),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
