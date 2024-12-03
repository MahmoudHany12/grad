import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.brown,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/egypt_temple_home.webp"), // Ensure correct path
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(  // Center the column in the body
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  // Center vertically
              children: [
                _buildButton(context, Icons.qr_code, 'Scan', '/scan'),
                _buildButton(context, Icons.mic, 'Speech', '/speech'),
                _buildButton(context, Icons.info, 'About', '/about'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, IconData icon, String label, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0), // Increase padding for larger buttons
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        icon: Icon(
          icon,
          size: 40.0,  // Increase the icon size
        ),
        label: Text(
          label,
          style: TextStyle(fontSize: 20.0),  // Increase font size
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,  // White background
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0), // Add padding for larger button size
          textStyle: TextStyle(fontSize: 20.0),  // Increase text size
        ),
      ),
    );
  }
}