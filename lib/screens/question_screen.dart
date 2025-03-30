import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("What is Flutter"),
      ElevatedButton(onPressed: () {}, child: Text('OnTap'))
    ],);
  }
}