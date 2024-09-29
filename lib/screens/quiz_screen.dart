import 'package:flutter/material.dart';
import 'package:quizapp/models/quiz_model.dart';
import 'package:quizapp/screens/question_screen.dart';
import 'package:quizapp/utils/colors.dart';

class QuizScreen extends StatelessWidget {
  static const routeName = '/quiz';
  final Quiz quiz;
  final String name; // New parameter

  QuizScreen({required this.quiz, required this.name}); // Update constructor

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.secondaryColor,
          title: const Text(
            'Quiz',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              // Add padding for better spacing
              child: SingleChildScrollView( // Add scrolling capability if needed
                child: QuestionScreen(questions: quiz.questions, name: name),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
