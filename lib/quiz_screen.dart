import "package:flutter/material.dart";

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Text("Quiz screen");
  }
}
