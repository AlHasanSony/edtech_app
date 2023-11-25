import 'package:flutter/material.dart';
import 'package:edtech_app/models/course.dart';

class CourseProvider extends ChangeNotifier {
  List<Course> _enrolledCourses = [];

  List<Course> get enrolledCourses => _enrolledCourses;

  void addEnrolledCourse(Course course) {
    _enrolledCourses.add(course);
    notifyListeners();
  }

// Add other methods as needed for managing course-related data
}
