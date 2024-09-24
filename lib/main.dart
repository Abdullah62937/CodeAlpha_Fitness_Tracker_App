import 'package:fitness_tracker_app/Pages/Signup.dart';
import 'package:flutter/material.dart';
import 'Pages/dashboard.dart';
import 'Pages/loginScreen.dart';
import 'Pages/workout.dart';
import 'Pages/goals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker App',
      theme: ThemeData(
        primaryColor: Colors.deepPurple, // Highlight color
        scaffoldBackgroundColor: Colors.grey[200],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.deepPurple, // Button color
            backgroundColor: Colors.white, // Button text color
          ),
        ),
        
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white, // Text fields background
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        
        
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/logWorkout': (context) => WorkoutLogScreen(),
        '/goals': (context) => GoalsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
