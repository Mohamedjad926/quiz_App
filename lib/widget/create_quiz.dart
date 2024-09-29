

import 'package:quizapp/models/question_model.dart';
import 'package:quizapp/models/quiz_model.dart';

Quiz createQuiz() {
  return Quiz(
    title: 'Quiz',
    questions: [
      QuestionModel(
        questionText: 'What is Flutter?',
        answers: ['Framework', 'Library', 'Language', 'Tool'],
        correctAnswerIndex: 0,
      ),
      QuestionModel(
        questionText: 'Who developed Flutter?',
        answers: ['Facebook', 'Google', 'Microsoft', 'Apple'],
        correctAnswerIndex: 1,
      ),
      QuestionModel(
        questionText: 'What is the name of the language used to build Flutter apps?',
        answers: ['Dart', 'Kotlin', 'Java', 'Swift'],
        correctAnswerIndex:0,
      ),
      QuestionModel(
        questionText: ' The World Largest desert is ? ',
         answers: [' Thar',' Sahara', ' Sonoran', ' Kalahari'],
          correctAnswerIndex: 1) 

    ],
  );
}
