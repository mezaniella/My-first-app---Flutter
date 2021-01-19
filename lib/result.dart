import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    if (resultScore <= 8) {
      return 'You are awesome and innocent!';
    }

    if (resultScore > 8) {
      return 'You are ... strange?!';
    }

    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              textAlign: TextAlign.center,
            ),
            FlatButton(
                child: Text(
                  'Restart Quiz!',
                ),
                textColor: Colors.blue,
                onPressed: this.resetHandler)
          ],
        ),
      ),
    );
  }
}
