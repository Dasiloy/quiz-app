import "package:flutter/material.dart";
import "package:quiz_app/answer_button.dart";
import "package:quiz_app/data/questions.dart";
import "package:google_fonts/google_fonts.dart";

class QuizScreen extends StatefulWidget {
  final void Function(String answer) onPickAnswer;

  const QuizScreen({super.key, required this.onPickAnswer});

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizScreen> {
  var index = 0;

  pickAnswer(String answer) {
    setState(() {
      widget.onPickAnswer(answer);
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[index];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions[index].text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            ...question.options.map((answer) {
              return AnswerButton(
                text: answer,
                onPressed: () {
                  pickAnswer(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
