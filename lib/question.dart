import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20.5),
      child: Text(questionText,
          style: TextStyle(fontSize: 34),
          textAlign: TextAlign.center),
    );
  }
}