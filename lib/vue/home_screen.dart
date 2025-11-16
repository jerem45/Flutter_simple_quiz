import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 500,
            color: const Color.fromARGB(181, 255, 255, 255),
          ),
          const SizedBox(height: 20),
          Text(
            textAlign: TextAlign.center,
            'Apprend flutter de la meilleur façon !',
            style: GoogleFonts.aboreto(
              color: const Color.fromARGB(216, 240, 239, 239),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: switchScreen,
            label: Text('Commencer le quiz'),
            icon: Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
