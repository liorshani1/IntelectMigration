import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  // final function will be a pointer to the method that will pass in the constructor
  // final vs const - final can be initial -at the runtime is locked the final value as const value
  // in compile time we will use Const
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
