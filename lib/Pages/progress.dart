// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';

// class ProgressChart extends StatelessWidget {
//   final List<WorkoutData> data;

//   // Provide default data if none is passed
//   ProgressChart({this.data = const []});

//   @override
//   Widget build(BuildContext context) {
//     // Use default data if the passed data list is empty
//     final List<WorkoutData> chartData = data.isNotEmpty ? data : _getDefaultData();

//     List<charts.Series<WorkoutData, String>> series = [
//       charts.Series(
//         id: "Workouts",
//         data: chartData,
//         domainFn: (WorkoutData workout, _) => workout.date,
//         measureFn: (WorkoutData workout, _) => workout.reps,
//         colorFn: (WorkoutData workout, _) =>
//             charts.ColorUtil.fromDartColor(Colors.blueAccent),
//       ),
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Progress Chart'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: charts.BarChart(
//           series,
//           animate: true,
//           animationDuration: Duration(seconds: 1),
//         ),
//       ),
//     );
//   }

//   // Default workout data to display if no data is provided
//   List<WorkoutData> _getDefaultData() {
//     return [
//       WorkoutData('Mon', 5),
//       WorkoutData('Tue', 10),
//       WorkoutData('Wed', 15),
//       WorkoutData('Thu', 20),
//       WorkoutData('Fri', 25),
//       WorkoutData('Sat', 30),
//     ];
//   }
// }

// class WorkoutData {
//   final String date;
//   final int reps;

//   WorkoutData(this.date, this.reps);
// }
