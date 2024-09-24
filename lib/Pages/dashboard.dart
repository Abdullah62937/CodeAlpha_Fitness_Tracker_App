import 'package:fitness_tracker_app/Pages/progress.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard', style:TextStyle(color:Colors.white)),
        backgroundColor: Theme.of(context).primaryColor, // Deep purple
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your Fitness Overview',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary, // Vibrant orange
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/logWorkout');
              },
              icon: Icon(Icons.fitness_center),
              label: Text('Log Workout'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Theme.of(context).primaryColor, // White text
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/goals');
              },
              icon: Icon(Icons.flag),
              label: Text('Set Fitness Goals'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 10),
           ElevatedButton.icon(
  onPressed: () {
    // Navigate to Progress page with sample data
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) => ProgressChart(
    //       data: [
    //         WorkoutData('Mon', 5),
    //         WorkoutData('Tue', 10),
    //         WorkoutData('Wed', 15),
    //         WorkoutData('Thu', 20),
    //         WorkoutData('Fri', 25),
    //         WorkoutData('Sat', 30),
    //       ],
    //     ),
    //   ),
    // );
  },
  icon: Icon(Icons.show_chart),
  label: Text('View Progress'),
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, // Button text color
    backgroundColor: Theme.of(context).primaryColor, // Button background color
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),

          ],
        ),
      ),
    );
  }
}
