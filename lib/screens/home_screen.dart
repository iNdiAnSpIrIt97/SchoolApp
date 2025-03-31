import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/screens/Admin/admin_home.dart';
import 'package:schoolapp/screens/Student/student_home.dart';
import 'package:schoolapp/screens/Teacher/teacher_home.dart';
import '../providers/user_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    if (user == null) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    switch (user.role) {
      case 'admin':
        return AdminHome();
      case 'teacher':
        return TeacherHome();
      case 'student':
        return StudentHome();
      default:
        return Scaffold(
          body: Center(child: Text('Unknown role')),
        );
    }
  }
}
