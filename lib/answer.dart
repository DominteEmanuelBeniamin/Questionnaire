import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  final correctAnswer;
  final score;

  Answer(this.selectHandler, this.answerText, this.correctAnswer, this.score);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    double buttonWidth = 300.0;
    double buttonHeight = 60.0;

    if (score == 1) {
      backgroundColor = Colors.green;
    } else if (score == 0) {
      backgroundColor = Colors.red;
    } else {
      backgroundColor = Color.fromARGB(255, 252, 128, 128);
    }

    return Padding(
      padding: const EdgeInsets.only(top: 55.0), // Add top padding
      child: Column(
        children: [
          Container(
            width: buttonWidth,
            height: buttonHeight,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(155, 5, 100, 132),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              child: Text(
                '$answerText',
                style: TextStyle(color: Color.fromARGB(255, 245, 239, 223)),
              ),
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          selectHandler();
                        },
                        child: Text(
                          'Închide',
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ],
                    title: Text(score != 0 && score != 1
                        ? 'Succes!'
                        : 'Răspunsul tău este:'),
                    contentPadding: const EdgeInsets.all(20.00),
                    content: Text(
                      score != 0 && score != 1
                          ? 'În următoarele minute o să primiți 10 întrebări de cultură biblică în funcție de dificultatea aleasă anterior, la finalul fiecărui răspuns dat o să aflați dacă răspunsul dat de dumneavoastră este corect sau nu, iar la finalul întrebărilor aflați ce punctaj ați luat din 10.'
                          : '$correctAnswer',
                    ),
                    backgroundColor: backgroundColor,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
