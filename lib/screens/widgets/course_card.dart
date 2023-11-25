import 'package:flutter/material.dart';
import 'package:edtech_app/models/course.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  final VoidCallback onContinuePressed;

  CourseCard({required this.course, required this.onContinuePressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(course.courseTitle),
        subtitle: Text(course.courseDescription),
        trailing: ElevatedButton(
          onPressed: onContinuePressed,
          child: Text('Continue Course'),
        ),
      ),
    );
  }
}
