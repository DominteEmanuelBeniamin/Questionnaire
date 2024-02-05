import 'package:flutter/material.dart';
import 'Difficulty/easydifficulty.dart';
import 'Difficulty/harddifficulty.dart';
import 'Difficulty/mediumdifficulty.dart';

class ChooseDifficulty extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/background.jpg', // Replace with your image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 400,
              child: Center(
                child: Text(
                  'Alege Dificultatea', // Replace with your desired text
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 245, 239, 223),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 400.0,
              child: Column(
                children: [
                  Container(
                    width: 300,
                    height: 60, // Increased button height
                    margin: EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(155, 5, 100, 132),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'Usor',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 245, 239, 223),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EasyDifficultyScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 60, // Increased button height
                    margin: EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(155, 5, 100, 132),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'Mediu',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 245, 239, 223),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MediumDifficultyScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 60, // Increased button height
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(155, 5, 100, 132),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'Greu',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 245, 239, 223),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HardDifficultyScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              right: 15,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    // Handle the onPressed action for the additional button
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.all(12.0), // Adjust the padding as needed
                    child: Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 245, 239, 223),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
