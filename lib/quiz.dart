import 'package:flutter/material.dart';
import 'dart:math';
import './question.dart';
import './answer.dart';

class Quiz extends StatefulWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Map<String, Object>> shuffledQuestions = [];

  @override
  void initState() {
    super.initState();
    shuffledQuestions = shuffleQuestions(widget.questions);
  }

  List<Map<String, Object>> shuffleQuestions(
      List<Map<String, Object>> questions) {
    final List<Map<String, Object>> shuffledList = List.from(questions);
    final _random = Random();
    for (var i = shuffledList.length - 1; i > 0; i--) {
      var n = _random.nextInt(i + 1);
      var temp = shuffledList[i];
      shuffledList[i] = shuffledList[n];
      shuffledList[n] = temp;
    }
    return shuffledList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          shuffledQuestions[widget.questionIndex]['questionText'] as String,
        ),
        ...(shuffledQuestions[widget.questionIndex]['answers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => widget.answerQuestion(answer['score']),
            answer['text'] as String,
            answer['correctAnswer'],
            answer['score'],
          );
        }).toList(),
      ],
    );
  }
}
