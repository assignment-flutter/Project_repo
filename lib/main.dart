import 'package:flutter/material.dart';
import 'package:projectflutter/Task.dart';
import 'package:projectflutter/create_task.dart';
import 'package:projectflutter/profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: myscreen(),
    );
  }
}

