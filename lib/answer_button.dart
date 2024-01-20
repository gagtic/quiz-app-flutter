import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final Function(String selectedAnswer) onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap(answerText);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
