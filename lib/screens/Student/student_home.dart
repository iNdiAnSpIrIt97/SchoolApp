import 'package:flutter/material.dart';

class StudentHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Dashboard')),
      body: Center(child: Text('Welcome, Student!')),
    );
  }
}
