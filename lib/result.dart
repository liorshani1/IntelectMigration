import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result({this.totalScore, this.resetQuiz});

  String get resultText {
    var resTxt;
    if (totalScore > 24) {
      resTxt = 'Greate MF your score is ' + totalScore.toString();
    } else {
      resTxt = 'Very bad your score is ' + totalScore.toString();
    }
    return resTxt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: this.resetQuiz,
              child: Text('Reset'),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.blue,
                primary: Colors.orange,
              )),
          OutlinedButton(
            onPressed: null,
            child: Text('Example'),
            style: OutlinedButton.styleFrom(
              primary: Colors.red,
              side: BorderSide(color: Colors.black, width: 5),
            ),
          )
        ],
      ),
    );
  }
}
