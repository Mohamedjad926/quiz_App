

import 'package:quizapp/models/question_model.dart';

class Quiz {
  final String title;
  final List<QuestionModel> questions;

  Quiz({
    required this.title,
    required this.questions,
  });
}
