import 'package:flutter/material.dart';
import 'package:questionnaire/firstscreen.dart';

void main() => runApp(MyApp()); //run the app

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) //build the app
      =>
      MaterialApp(
        //return a material app
        home: FirstScreen(), //set the first screen
      );
}
