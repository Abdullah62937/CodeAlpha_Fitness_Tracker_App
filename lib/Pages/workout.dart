import 'package:flutter/material.dart';

class WorkoutLogScreen extends StatefulWidget {
  @override
  _WorkoutLogScreenState createState() => _WorkoutLogScreenState();
}

class _WorkoutLogScreenState extends State<WorkoutLogScreen> {
  final _formKey = GlobalKey<FormState>();
  String workoutType = '';
  int duration = 0;

  void _logWorkout() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Workout Logged!')),
      );
      Navigator.pop(context); // Go back to dashboard after logging workout
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log Workout', style:TextStyle(color:Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Log Your Workout',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Workout Type',
                  prefixIcon: Icon(Icons.fitness_center, color: Theme.of(context).primaryColor),
                ),
                onChanged: (value) => workoutType = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a workout type';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Duration (in minutes)',
                  prefixIcon: Icon(Icons.timer, color: Theme.of(context).primaryColor),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) => duration = int.tryParse(value) ?? 0,
                validator: (value) {
                  if (value == null || value.isEmpty || int.tryParse(value) == null) {
                    return 'Please enter a valid duration';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _logWorkout,
                child: Text('Log Workout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
