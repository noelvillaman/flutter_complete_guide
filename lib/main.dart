import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionState = 0;
  final questions = const [
    {"questionText" : "What is your favorite color?",
      "answers" : ["Black", "Red", "Green", "White"],
    },
    {"questionText" : "What is your favorite animal?",
      "answers" : ["Lion", "Cat", "Dog", "Elephant"],
    },
    {"questionText" : "Who is your favorite player?",
      "answers" : ["Trout", "Pujols", "Jordan", "Melo"],
    },
  ];
  void questionAnswer(){

    setState(() {
      if(_questionState < questions.length) {
        _questionState++;
      }
    });
    print("Noel won!");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("Flutter 2021"),),
      body: _questionState < questions.length ?
      Column(children: [
        Question(questions[_questionState]["questionText"]),
        ...(questions[_questionState]["answers"] as List<String>).map((answer){
          return Answer(questionAnswer, answer);
        }).toList()
      ],) : Center(child: Text("All done!"))
    ),);
  }
}