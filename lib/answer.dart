// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  // ignore: use_key_in_widget_constructors
  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: selectHandler,
      ),
    );
  }
}
