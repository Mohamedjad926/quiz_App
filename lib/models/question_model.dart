class QuestionModel {
  final String questionText;
  final List<String> answers;
  final int correctAnswerIndex;

  QuestionModel({
    required this.questionText,
    required this.answers,
    required this.correctAnswerIndex,
  });
}
