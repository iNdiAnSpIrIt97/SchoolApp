import 'package:flutter/material.dart';

class TeacherHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Teacher Dashboard')),
      body: Center(child: Text('Welcome, Teacher!')),
    );
  }
}
