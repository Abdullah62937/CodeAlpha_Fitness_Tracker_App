import 'package:flutter/material.dart';

class GoalsScreen extends StatefulWidget {
  @override
  _GoalsScreenState createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  final _formKey = GlobalKey<FormState>();
  String fitnessGoal = '';

  void _setGoal() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Goal Set!')),
      );
      Navigator.pop(context); // Return to dashboard after setting goal
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Fitness Goals', style:TextStyle(color:Colors.white)),
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
                'Set Your Fitness Goal',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Fitness Goal',
                  prefixIcon: Icon(Icons.flag, color: Theme.of(context).primaryColor),
                ),
                onChanged: (value) => fitnessGoal = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your fitness goal';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _setGoal,
                child: Text('Set Goal'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
