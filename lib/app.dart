import "package:flutter/material.dart";
import "package:quiz_app/quiz_screen.dart";
import "package:quiz_app/start_scree.dart";

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  String screen = "start-screen";

  void switchScreen() {
    setState(() {
      screen = "quiz-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
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
          child:
              screen == "start-screen"
                  ? StartScreen(switchScreen)
                  : QuizScreen(),
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
