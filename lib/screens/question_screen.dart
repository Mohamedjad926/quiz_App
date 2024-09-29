import 'package:flutter/material.dart';
import 'package:quizapp/models/question_model.dart';
import 'package:quizapp/screens/score_screen.dart';

class QuestionScreen extends StatefulWidget {
  final List<QuestionModel> questions;
  final String name; // New parameter

  QuestionScreen({required this.questions, required this.name}); // Update constructor

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;
  int score = 0;

  void _answerQuestion(int selectedIndex) {
    if (selectedIndex == widget.questions[currentQuestionIndex].correctAnswerIndex) {
      score++;
    }

    if (currentQuestionIndex < widget.questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScoreScreen(score: score, total: widget.questions.length, name: widget.name), // Pass the name
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.questions[currentQuestionIndex];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          question.questionText,
           style:const  TextStyle(
            fontSize: 24,
            
            )),
        ...question.answers.asMap().entries.map((entry) {
          int index = entry.key;
          String answer = entry.value;
          return ElevatedButton(
           
            onPressed: () => _answerQuestion(index),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                answer,
                style:const  TextStyle(
                  fontSize: 14,
                  color: Colors.black,

                ),
                ),
            ),
          );
        }).toList(),
      ],
    );
  }
}
