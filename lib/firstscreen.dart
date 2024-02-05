import 'package:flutter/material.dart';
import 'package:questionnaire/choosedifficulty.dart';
import 'package:questionnaire/randomq.dart';
import 'Difficulty/easydifficulty.dart';
import 'Difficulty/harddifficulty.dart';
import 'Difficulty/mediumdifficulty.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use a Scaffold to create the layout
      body: Stack(
        // Use a Stack to layer the widgets
        children: [
          // Add the widgets to the Stack
          // Background Image
          Image.asset(
            'assets/images/background.jpg', // Replace with your image path
            fit: BoxFit.cover, // Use BoxFit.cover to stretch the image
            width: double.infinity, // Set the width to double.infinity
            height: double.infinity, // Set the height to double.infinity
          ),
          Positioned(
            // Use Positioned to position the widget
            left: 0,
            right: 0,
            top:
                150.0, // Adjust the top value to set the desired distance from the top
            child: Container(
              // Use a Container to add padding and background color
              alignment:
                  Alignment.center, // Use Alignment.center to center the text
              child: Text(
                // Use Text to display the text
                'Intrebari Biblice', // Replace with your desired text
                style: TextStyle(
                  // Use TextStyle to style the text
                  fontSize: 30, // Set the desired font size
                  color: Color.fromARGB(
                      255, 245, 239, 223), // Set the desired text color
                  fontWeight: FontWeight.bold, // Set the desired font weight
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom:
                250.0, // Adjust this value to set the desired distance from the bottom
            child: Column(
              children: [
                Container(
                  width: 300.0, // Set the desired width here
                  height: 50.0, // Set the desired height here
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseDifficulty(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(155, 5, 100, 132),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Adjust the value for the desired roundness
                        ),
                      ),
                    ),
                    child: Text(
                      'Chestionare',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 245, 239, 223)),
                    ),
                  ),
                ),
                SizedBox(height: 15), // Add a 15-pixel space between buttons
                Container(
                  width: 300.0, // Set the desired width here
                  height: 50.0, // Set the desired height here
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RandomQuestionsScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(155, 5, 100, 132),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Adjust the value for the desired roundness
                        ),
                      ),
                    ),
                    child: Text(
                      'Exerseaza intrebarile!',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 245, 239, 223)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
