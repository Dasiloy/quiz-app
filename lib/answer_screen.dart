import "package:flutter/material.dart";
import 'package:quiz_app/models/question_summary.dart';
import "package:quiz_app/data/questions.dart";
import "package:quiz_app/summary_widget.dart";

class AsnwerScreen extends StatelessWidget {
  final List<String> answers;
  const AsnwerScreen({super.key, required this.answers});

  List<QuestionSummary> get summary {
    var report = <QuestionSummary>[];
    for (var i = 0; i < answers.length; i++) {
      report.add(
        QuestionSummary(
          question: questions[i].text,
          chosenAnswer: answers[i],
          correctAnswer: questions[i].answers[0],
        ),
      );
    }
    return report;
  }

  @override
  Widget build(BuildContext context) {
    var report = summary;
    var correctAnswers = report.where((ans) {
      return ans.isAnswerCorrect;
    });

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered ${correctAnswers.length} out of ${answers.length} questions correctly",
            ),
            SizedBox(height: 20),
            SummaryWidget(report),
            SizedBox(height: 20),
            TextButton(onPressed: () {}, child: Text("Start again")),
          ],
        ),
      ),
    );
  }
}
