import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to login screen after 3 seconds
    _navigateToLogin();
  }

  // Function to navigate to the login screen after 3 seconds
  _navigateToLogin() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // Ensure it takes up the full screen width
        height: double.infinity, // Ensure it takes up the full screen height
        child: Image.asset(
          'assets/giff.gif', // Ensure the path is correct
          fit: BoxFit.cover,  // Ensures the GIF covers the entire screen
        ),
      ),
    );
  }
}