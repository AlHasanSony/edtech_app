import 'package:flutter/material.dart';
import 'package:edtech_app/providers/course_provider.dart';
import 'package:edtech_app/screens/dashboard/enrolled_courses_screen.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Dashboard!',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EnrolledCoursesScreen(),
                  ),
                );
              },
              child: Text('View Enrolled Courses'),
            ),
          ],
        ),
      ),
    );
  }
}
