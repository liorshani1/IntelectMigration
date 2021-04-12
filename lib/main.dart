import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // run by matrial dart
}

// void main() => runApp(MyApp()); // alternatibe syntax

// must be extens StatlessWidget , or fullSatateWidget
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _i = 0;
  var _totalScore = 0;

  void _answerQuestion(score) {
    _totalScore += score;

    setState(() {
      _i = _i + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _i = 0;
      _totalScore = 0;
    });
  }

  final _questions = [
    {
      'questionText': 'Whats is your favoite color',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'black', 'score': 7},
        {'text': 'yello', 'score': 2},
      ]
    },
    {
      'questionText': 'Whats is your favoite pet',
      'answers': [
        {'text': 'rabbit', 'score': 2},
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 7},
      ]
    },
    {
      'questionText': 'Favorite advisor',
      'answers': [
        {'text': 'Yuval', 'score': 9},
        {'text': 'Eli', 'score': 9},
        {'text': 'Erez', 'score': 7},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        // body: Text('This is the body'),
        // lets use invisible widget COL
        body: _i < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                i: _i,
              )
            : Result(totalScore: _totalScore, resetQuiz: _resetQuiz),
      ),
    );
    // home core wiget
    // also must return widget
    // context - object of type buildcontext hold metadata of widget
    // every widget is a dart class
  }
}
