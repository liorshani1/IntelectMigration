import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int i;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.i});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // List of widgets
        Question(questions[i]
            ['questionText']), // this assoisate with List<Map<string,object>
        // we will use Question Class from question.dart file

        // we will use Spread operator in order to handle list inside list above
        // this pull all the value out of the list and add them to the serounded list as indevidual values
        ...(questions[i]['answers'] as List<Map<String, Object>>).map((ans) {
          return Answer(() => answerQuestion(ans['score']), ans['text']);
        }).toList()
        //here we mapping a list to a List of Widgets

        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        //RaisedButton(child: Text('answer3'), onPressed: _answerQuestion)
        // ElevatedButton(
        // style: ButtonStyle(
        // backgroundColor: MaterialStateProperty.all(Colors.blue),
        // ),
        // child: ...,
        // onPressed: ...,
      ],
    );
  }
}
