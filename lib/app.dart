import "package:flutter/material.dart";
import "package:quiz_app/quiz_screen.dart";
import "package:quiz_app/start_scree.dart";
import "package:quiz_app/data/questions.dart";
import "package:quiz_app/answer_screen.dart";

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  String screen = "start-screen";
  var selectedansers = <String>[];

  void switchScreen() {
    setState(() {
      screen = "quiz-screen";
    });
  }

  void onChosseAnswer(String answer) {
    selectedansers.add(answer);

    if (questions.length == selectedansers.length) {
      setState(() {
        screen = 'answer-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child = StartScreen(switchScreen);

    if (screen == "quiz-screen") {
      child = QuizScreen(onPickAnswer: onChosseAnswer);
    }

    if (screen == "answer-screen") {
      child = AsnwerScreen(answers: selectedansers);
    }

    return MaterialApp(
      title: "Quiz App",
      theme: ThemeData(),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.purpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: child,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
