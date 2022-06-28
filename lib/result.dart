import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 81) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 61) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 31) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 11) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'Score $resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: new Text('Restart Quiz!',style: TextStyle(fontSize: 20)),
            color: Colors.teal[400],
            textColor: Colors.white,
            onPressed: (){
              resetHandler();
              },
          ),
        ],
      ),
    );
  }
}