import 'package:flutter/material.dart';
import 'package:adv_basics/vue/question_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.userChoices});
  final void Function(String answer) userChoices;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionIndex = 0;
  //fonction des boutons
  void answerQuestion(String userSelectAnswer) {
    widget.userChoices(userSelectAnswer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(context) {
    var currentData = questions[questionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentData.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.aboreto(
                color: const Color.fromARGB(237, 212, 211, 211),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            ...currentData.shuffledAnswer.map((data) {
              return Padding(
                padding: EdgeInsets.all(5),
                child: QuestionButton(
                  onTap: () {
                    answerQuestion(data);
                  },
                  answerText: data,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
