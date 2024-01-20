import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    const numberContainerSize = 29.0;

    return SizedBox(
      height: 425,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((summary) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: numberContainerSize,
                  height: numberContainerSize,
                  decoration: BoxDecoration(
                    color: summary['user_answer'] == summary['correct_answer']
                        ? const Color.fromARGB(255, 237, 124, 241)
                        : const Color.fromARGB(255, 236, 114, 114),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      ((summary['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 101, 0, 158),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(summary['question'] as String,
                          style: const TextStyle(
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        summary['user_answer'] as String,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 53, 192, 210),
                        ),
                      ),
                      Text(
                        summary['correct_answer'] as String,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 102, 237, 255),
                        ),
                      ),
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
