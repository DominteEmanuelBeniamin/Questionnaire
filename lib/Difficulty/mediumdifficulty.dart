import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:questionnaire/Questions/quizhardquestions.dart';
import 'package:questionnaire/choosedifficulty.dart';
import 'package:questionnaire/quiz.dart';
import 'package:questionnaire/result.dart';
import 'package:questionnaire/Difficulty/harddifficulty.dart';
import 'package:questionnaire/firstscreen.dart';

class MediumDifficultyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MDScreen();
  }
}

class MDScreen extends State<MediumDifficultyScreen> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var difficulty = 1;
  final _questions = hardQuestions;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FirstScreen()));
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                // Center everything within this widget
                child: Column(
                  // Use a Column to center content lower
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _questionIndex < 10
                        ? Quiz(
                            answerQuestion: _answerQuestion,
                            questionIndex: _questionIndex,
                            questions: _questions)
                        : Result(_totalScore, _resetQuiz),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
