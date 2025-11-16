import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/vue/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.userChoices, required this.returnToHome});
  final List<String> userChoices;
  final void Function() returnToHome;

  //méthode
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    //boucle pour recuperer les informations
    for (var i = 0; i < userChoices.length; i++) {
      summary.add({
        'index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': userChoices[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestion = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Votre score : $numCorrectQuestion / $numTotalQuestions',
              style: TextStyle(color: Colors.amberAccent, fontSize: 20),
            ),
            QuestionSummary(summaryData),
            SizedBox(height: 50),
            OutlinedButton.icon(
              onPressed: returnToHome,
              label: Text('Recommencer '),
              icon: Icon(Icons.arrow_circle_down),

              style: OutlinedButton.styleFrom(
                iconColor: Colors.white,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
