// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  // ignore: use_key_in_widget_constructors
  const Result(this.resultScore, this.resetHandler);
  // ignore: non_constant_identifier_names
  String get ResultPhrase {
    String resultText = 'You did it ';
    if (resultScore <= 18) {
      resultText = 'You are so bad';
    } else if (resultScore <= 24) {
      resultText = ' You are strange';
    } else if (resultScore <= 26) {
      resultText = ' Pretty good';
    } else {
      resultText = ' You are awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            ResultPhrase,
            style: const TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetHandler, child: const Text('Restart the quiz'))
        ],
      ),
    );
  }
}
