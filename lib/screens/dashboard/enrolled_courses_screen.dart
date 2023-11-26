
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class EnrolledCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to the Dashboard!',
                style: TextStyle(fontSize: 18.0),
              ),
              CustomContainer(
                title: 'Learn Dart and Flutter',
                buttonText: 'Continue Course',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EnrolledCoursesScreen(),
                    ),
                  );
                  // Add the logic for the first container's continue button
                },
              ),
              CustomContainer(
                title: 'Learn Python',
                buttonText: 'Continue Course',
                onPressed: () {
                  // Add the logic for the second container's continue button
                },
              ),
              CustomContainer(
                title: 'Learn Java',
                buttonText: 'Continue Course',
                onPressed: () {
                  // Add the logic for the third container's continue button
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}