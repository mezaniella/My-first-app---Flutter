import 'package:flutter/material.dart';
import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 7},
        {'text': 'Green', 'score': 6},
        {'text': 'Red', 'score': 8},
        {'text': 'Black', 'score': 2},
        {'text': 'White', 'score': 4},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 3},
        {'text': 'Cat', 'score': 7},
        {'text': 'Lion', 'score': 4},
        {'text': 'Rabbit', 'score': 2},
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              elevation: 10,
              title: Text(
                'My first App',
              ),
              backgroundColor: Colors.red,
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex)
                : Result(_totalScore, _resetQuiz)));
  }
}
