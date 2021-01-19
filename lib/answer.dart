import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 10, left: 10),
      child: RaisedButton(
        color: Colors.yellow,
        textColor: Colors.black,
        child: Text(this.answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
