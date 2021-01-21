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
  var questionState = 0;
  void questionAnswer(){
    setState(() {
      if(questionState < 3) {
        questionState++;
      }
    });
    print("Noel won!");
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      {"questionText" : "What is your favorite color?",
      "answers" : ["Black", "Red", "Green", "Whte"],
      },
      {"questionText" : "What is your favorite animal?",
        "answers" : ["Lion", "Cat", "Dog", "Elephant"],
      },
      {"questionText" : "Who is your favorite player?",
        "answers" : ["Trout", "PUjols", "Jordan", "Melo"],
      },
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("Flutter 2021"),),
      body: Column(children: [
        Question(questions[questionState]["questionText"]),
        ...(questions[questionState]["answers"] as List<String>).map((answer){
          return Answer(questionAnswer, answer);
        }).toList()
      ],)
    ),);//("This is Noels first app with Flutter 01 18 2021!"),);
  }
}