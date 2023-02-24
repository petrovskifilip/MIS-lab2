import 'package:flutter/material.dart';

import './clothes_question.dart';
import './clothes_answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void iWasTapped() => print('I was tapped');
  var questions = [
    {
      "question": "What color of shoes do you want?",
      "answers": [
        "Blue",
        "Navy",
        "Black",
      ],
    },
    {
      "question": "What type of t-shirt do you want?",
      "answers": [
        "Standard",
        "Polo t-shirt",
        "Long sleeves",
      ],
    },
    {
      "question": "What color of jeans do you want?",
      "answers": [
        "Light blue",
        "Black",
        "Gray",
      ]
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < questions.length - 1) {
        _questionIndex += 1;
      } else {
        _questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MIS Lab2 181063",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lab2 181063"),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question'].toString()),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return ClothesAnswer(
                _answerQuestion,
                answer,
              );
            })
          ],
        ),
      ),
    );
  }
}
