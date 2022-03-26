import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favourite colour?',
      'answers': [
        {'text': 'White', 'score': '7'},
        {'text': 'Black', 'score': '8'},
        {'text': 'Veridian', 'score': '10'},
        {'text': 'Red', 'score': '5'},
      ]
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': '10'},
        {'text': 'Tiger', 'score': '6'},
        {'text': 'Jaguar', 'score': '7'},
        {'text': 'Cheetah', 'score': '4'},
      ]
    },
    {
      'questionText': 'what\'s your favourite actor?',
      'answers': [
        {'text': 'SRK', 'score': '10'},
        {'text': 'Salman', 'score': '5'},
        {'text': 'Dhanush', 'score': '7'},
        {'text': 'Vijay', 'score': '5'},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool - false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // ignore: avoid_print
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions');
    } else {
      // ignore: avoid_print
      print('You did it');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = ['Hello'];
    // dummy.add('Umair');
    //print(dummy);
    // dummy = [];

    // questions =[]; deosn't work if questions is a const

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Umair\'s First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
