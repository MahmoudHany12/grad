import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/egypt_temple_login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'History Explorer',
              style: GoogleFonts.cinzel(
                fontSize: 36,
                color: Colors.yellow[0xffad9c00],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your username',
                  filled: true,
                  fillColor: Colors.brown.shade200.withOpacity(0.7),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  filled: true,
                  fillColor: Colors.brown.shade200.withOpacity(0.7),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Handle account creation
              },
              child: Text(
                'Create Account',
                style: TextStyle(color: Colors.yellow[0xffad9c00]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
