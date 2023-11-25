import 'package:flutter/material.dart';
import 'package:edtech_app/models/course.dart';
import 'package:edtech_app/providers/course_provider.dart';
import 'package:edtech_app/providers/bookmark_provider.dart';
import 'package:edtech_app/screens/widgets/video_player.dart';
import 'package:edtech_app/screens/widgets/module_list.dart';
import 'package:edtech_app/screens/widgets/bookmark_list.dart';
import 'package:provider/provider.dart';


class CoursePlayerScreen extends StatelessWidget {
  final Course course;

  CoursePlayerScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    // Assuming you have a CourseProvider to manage the course-related data
    CourseProvider courseProvider = Provider.of<CourseProvider>(context);

    // Assuming you have a BookmarkProvider to manage bookmark-related data
    BookmarkProvider bookmarkProvider = Provider.of<BookmarkProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(course.courseTitle),
      ),
      body: Column(
        children: [
          VideoPlayerWidget(videoUrl: course.videoUrl),
          ModuleListWidget(modules: course.modules),
          BookmarkListWidget(bookmarks: bookmarkProvider.getBookmarks(course.id)),
        ],
      ),
    );
  }
}
