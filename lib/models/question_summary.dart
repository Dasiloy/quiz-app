class QuestionSummary {
  final String question;
  final String chosenAnswer;
  final String correctAnswer;

  QuestionSummary({
    required this.question,
    required this.chosenAnswer,
    required this.correctAnswer,
  });

  bool get isAnswerCorrect {
    return chosenAnswer == correctAnswer;
  }
}
