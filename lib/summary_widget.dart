import "package:flutter/material.dart";
import "package:quiz_app/models/question_summary.dart";

class SummaryWidget extends StatelessWidget {
  final List<QuestionSummary> report;

  const SummaryWidget(this.report, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              report.asMap().entries.map((entry) {
                final index = entry.key;
                final data = entry.value;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${index + 1}.',
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data.question),
                          Text(data.chosenAnswer),
                          Text(data.correctAnswer),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
