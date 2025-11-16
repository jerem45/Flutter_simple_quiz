import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton({super.key, required this.onTap, required this.answerText});
  final void Function() onTap;
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        foregroundColor: const Color.fromARGB(255, 110, 70, 70),
        backgroundColor: const Color.fromARGB(234, 38, 0, 104),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
      ),
      onPressed: onTap,
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.amberAccent),
      ),
    );
  }
}
