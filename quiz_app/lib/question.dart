import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 186, 185, 185),
            borderRadius: BorderRadius.all(Radius.circular(1000))),
        margin: EdgeInsets.all(20),
        width: 300,
        height: 25,
        child: Text(
          questionText,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
    );
  }
}
