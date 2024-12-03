import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'home_screen.dart';
import 'create_account_screen.dart'; // Import create_account_screen.dart
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(HistoryApp());
}

class HistoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'History Explorer',
      theme: ThemeData(
        textTheme: GoogleFonts.cinzelTextTheme(), // Set Cinzel as the default font
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/create-account': (context) => CreateAccountScreen(), // Add CreateAccountScreen route
      },
    );
  }
}