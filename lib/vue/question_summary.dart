import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map((data) {
              var styleAnswer = data['user_answer'] != data['correct_answer']
                  ? Colors.red
                  : Color.fromARGB(216, 95, 180, 98);

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: styleAnswer,
                      ),
                      child: Text(
                        ((data['index'] as int) + 1).toString(),
                        style: GoogleFonts.aboreto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.aboreto(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(data['user_answer'] as String, style: TextStyle(color: styleAnswer)),
                          Text(
                            data['correct_answer'] as String,
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
