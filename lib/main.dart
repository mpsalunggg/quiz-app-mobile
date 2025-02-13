import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    const String appTitle = 'Quiz App';
    return const MaterialApp(
      title: appTitle,
      home: Scaffold(
        body: QuizScreen(),
      ),
    );
  }
}
