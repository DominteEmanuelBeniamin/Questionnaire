import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
          color: Color.fromARGB(255, 245, 239, 223),
          // Grosimea și culoarea conturului
          shadows: <Shadow>[
            Shadow(
              offset: Offset(0, 0),
              blurRadius: 5.0,
              color: Colors.black,
            ),
            Shadow(
              offset: Offset(0, 0),
              blurRadius: 5.0,
              color: Colors.black,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
