import 'package:flutter/material.dart';
import 'package:edtech_app/providers/course_provider.dart';
import 'package:edtech_app/screens/dashboard/course_player_screen.dart';
import 'package:provider/provider.dart';

class EnrolledCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Assuming you have a CourseProvider to manage the course-related data
    CourseProvider courseProvider = Provider.of<CourseProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Enrolled Courses'),
      ),
      body: ListView.builder(
        itemCount: courseProvider.enrolledCourses.length,
        itemBuilder: (context, index) {
          var course = courseProvider.enrolledCourses[index];

          return ListTile(
            title: Text(course.courseTitle),
            subtitle: Text(course.courseDescription),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoursePlayerScreen(course: course),
                  ),
                );
              },
              child: Text('Continue Course'),
            ),
          );
        },
      ),
    );
  }
}

