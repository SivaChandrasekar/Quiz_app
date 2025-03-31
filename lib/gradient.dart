import 'package:flutter/material.dart';
import 'package:quizapp/data/question_data.dart';
import 'package:quizapp/screens/question_screen.dart';
import 'package:quizapp/screens/result_screen.dart';
import 'package:quizapp/screens/start_screen.dart';


class GradientStyle extends StatefulWidget {
  const GradientStyle({super.key});

  @override
  State<GradientStyle> createState() => _GradientStyleState();
}

class _GradientStyleState extends State<GradientStyle> {
  List<String>  selectedAnswer = [];

  var activeScreen = 'start-screen';
  
  void switchScreen() {
    setState(() {
    activeScreen = 'question-screen';
  });
    
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if(selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }


  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    
    Widget screenWidget = StartScreen(switchScreen);


    if(activeScreen == 'question-screen'){
     screenWidget =  QuestionScreen(onSelectAnswer: chooseAnswer);
    }
    if(activeScreen == 'result-screen'){
     screenWidget= ResultsScreen(chosenAnswers:selectedAnswer, onRestart:restartQuiz);
    }

    return  Container( decoration: BoxDecoration(gradient: LinearGradient(colors:[  const Color.fromARGB(255, 255, 49, 255),
          const Color.fromARGB(255, 75, 0, 35),],begin: Alignment.topLeft,end: Alignment.bottomRight)),
      child: screenWidget);
  }
}