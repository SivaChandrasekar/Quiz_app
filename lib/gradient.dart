import 'package:flutter/material.dart';
import 'package:quizapp/screens/question_screen.dart';
import 'package:quizapp/screens/start_screen.dart';


class GradientStyle extends StatefulWidget {
  const GradientStyle({super.key});

  @override
  State<GradientStyle> createState() => _GradientStyleState();
}

class _GradientStyleState extends State<GradientStyle> {

  
  Widget? activeScreen;

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = 'question-screen' as Widget?;
  //   });
    
  // }



  @override
  Widget build(BuildContext context) {
      // final screenWidget = activeScreen == 'start-screen' ? StartScreen(switchScreen): QuestionScreen();
    return  Container( decoration: BoxDecoration(gradient: LinearGradient(colors:[  const Color.fromARGB(255, 255, 49, 255),
          const Color.fromARGB(255, 75, 0, 35),],begin: Alignment.topLeft,end: Alignment.bottomRight)),
      child: StartScreen());
  }
}