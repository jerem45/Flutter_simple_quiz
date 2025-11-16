import 'package:adv_basics/vue/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/vue/home_screen.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/vue/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //*****************************les variables Général
  var activeScreen = 'home-screen';
  //On stocke ici la liste des réponses selectionner par l'utilisateur
  List<String> selectAnswer = [];

  //******************************les methodes
  //changements d'ecrant
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  //Stockage des réponses utilisateur
  void chooseAnswer(String answer) {
    selectAnswer.add(answer);
    if (selectAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void goToHomePage() {
    setState(() {
      selectAnswer = [];
      activeScreen = 'home-screen';
    });
  }

  @override
  Widget build(context) {
    Widget widgetScreen = HomeScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      widgetScreen = QuestionScreen(userChoices: chooseAnswer);
    }

    if (activeScreen == 'result-screen') {
      widgetScreen = ResultScreen(userChoices: selectAnswer, returnToHome: goToHomePage);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 82, 30, 88),
                const Color.fromARGB(255, 170, 154, 197),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: widgetScreen,
        ),
      ),
    );
  }
}
