import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_screen.dart';
import 'home_screen.dart';
import 'create_account_screen.dart';
import 'splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase only if not already initialized
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDIQ29Wrak9iYGK2C8xzTjQGYKaxW0U1-0",
        appId: "1:419926934270:android:9dfb3c2d0ac64ad5f4dbaf",
        messagingSenderId: "419926934270",
        projectId: "historealm-80a25",
        storageBucket: "historealm-80a25.firebasestorage.app",
      ),
    );
  }

  runApp( HistoryApp());
}

class HistoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HistoRealm',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/create-account': (context) => CreateAccountScreen(),
      },
    );
  }
}
