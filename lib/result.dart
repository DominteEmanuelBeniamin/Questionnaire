import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 5) {
      resultText = 'Rezultatul tau este, $resultScore/10. Încearcă din nou!';
    } else if (resultScore <= 8) {
      resultText =
          'Rezultatul tau este, $resultScore/10. Nu e rău, dar poți mai mult!';
    } else if (resultScore <= 10) {
      resultText =
          'Felicitari!Rezultatul tau este, $resultScore/10. Ești un adevărat cunoscător al Bibliei!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
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
              ], // Mărimea textului
            ),
          ),
          SizedBox(height: 20), // Spațiu între text și buton
          ElevatedButton(
            onPressed: resetHandler,
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(155, 5, 100, 132),
              // Setare dimensiuni pentru buton
              minimumSize: Size(150, 50),
              // Opțiuni de aspect pentru buton când este apăsat
              onPrimary: Colors.white,
              textStyle:
                  const TextStyle(fontSize: 18), // Mărimea textului butonului
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Bordură rotundă pentru buton
              ),
            ),
            child: const Text('Reîncepe'),
          ),
        ],
      ),
    );
  }
}
