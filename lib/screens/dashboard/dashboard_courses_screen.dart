import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/dashboard_screen_course_card.dart';

class EnrolledCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.black45,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Courses',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
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
