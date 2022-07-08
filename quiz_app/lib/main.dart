import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  void _examineAnswer(int examineScore) {
    if (examineScore == 1) {
      _questionIndex += 1;
    } else {
      print('Wrong Answer!!!!!');
    }
  }

  var _totalScore = 0;
  var _questionIndex = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  var _question_1 = [
    {
      'questiontext1': 'When did World War II begin?',
      'answer1': [
        {'text1': '1942', 'score1': 0},
        {'text1': '1939', 'score1': 1},
        {'text1': '1945', 'score1': 0},
        {'text1': '1938', 'score1': 0}
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 22, 26, 148),
          title: Center(
              child: Text(
            'Quiz App',
            textAlign: TextAlign.center,
          )),
        ),
        body: Column(
          children: [
            Question(_question_1[_questionIndex]['questiontext1']),
            ...(_question_1[_questionIndex]['answer1']
                    as List<Map<String, Object>>)
                .map((answer) {
              return Answer(
                  answer['text1'],
                  () => _answerQuestion(answer['score1'] as int),
                  () => _examineAnswer(answer['score1'] as int));
            }).toList()
          ],
        ),
      ),
    );
  }
}
