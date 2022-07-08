import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var answerText;
  final VoidCallback selectHandler;
  final VoidCallback selectExamine;
  Answer(this.answerText, this.selectHandler, this.selectExamine);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 270,
      child: RaisedButton(
          child: Text(
            answerText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          onPressed: selectHandler),
    );
  }
}
