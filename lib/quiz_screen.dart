import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizScreeState();
  }
}

class _QuizScreeState extends State<QuizScreen> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(startQuiz);
    super.initState();
  }

  void startQuiz() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return Center(child: activeScreen);
  }
}
