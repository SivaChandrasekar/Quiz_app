import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  // final void function() startQuiz;
  
  @override
  Widget build(BuildContext context) {
    return  Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/quiz-logo.png",width: 300,),
        SizedBox(height: 80),
        Text('Learn flutter the fun way!', style: TextStyle(
          fontSize: 24,
          color: Colors.white
        ),),
        SizedBox(height: 30),
        OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white
        ),
        onPressed: (){},
         icon: Icon(Icons.arrow_right_alt),
         label: Text('Start Quiz'))
      ],
    ));
  }
}