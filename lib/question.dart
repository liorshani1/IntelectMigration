import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  // "final" this value will not change after the widget create
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
