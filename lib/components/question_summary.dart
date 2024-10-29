import "package:flutter/material.dart";

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  MaterialColor changeColour(answerData) {
    if (answerData["correct_answer"] == answerData["user_answer"]) {
      return Colors.blue;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map(
              (data) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          color: changeColour(data),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      child: Text(
                        ((data["question_index"] as int) + 1).toString(),
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(children: [
                        Text(
                          data["question"] as String,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          data["user_answer"] as String,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          data["correct_answer"] as String,
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        )
                      ]),
                    )
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
