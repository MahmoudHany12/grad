import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io'; // For exiting the app

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Close the app when the back button is pressed
        exit(0);
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/museum.jpg"), // Updated image path
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align buttons to the left
            children: [
              SizedBox(height: 60), // Add some space from the top for better visual balance
              _buildButton(context, Icons.qr_code, 'Scan', '/scan'),
              _buildButton(context, Icons.mic, 'Speech', '/speech'),
              _buildButton(context, Icons.info, 'About', '/about'),
              Spacer(), // Push the logout button to the bottom
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    FirebaseAuth.instance.signOut(); // Log out the user
                    Navigator.pushReplacementNamed(context, '/'); // Navigate to login screen
                  },
                  icon: Icon(Icons.logout, size: 24.0),
                  label: Text(
                    'Logout',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Red logout button
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, IconData icon, String label, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0), // Adjust padding for larger buttons
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        icon: Icon(
          icon,
          size: 50.0, // Increase icon size for larger buttons
        ),
        label: Text(
          label,
          style: TextStyle(fontSize: 24.0), // Increase font size for button text
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // White background for buttons
          minimumSize: Size(300, 80), // Increase button size (width and height)
          alignment: Alignment.centerLeft, // Align text and icon to the left
          padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding inside the button
          textStyle: TextStyle(fontSize: 24.0), // Increase text size
        ),
      ),
    );
  }
}
