class Question {
  final String text;
  final List<String> answers;

  const Question(this.text, this.answers);

  List<String> get options {
    final list = List<String>.of(answers);
    list.shuffle();
    return list;
  }
}
