import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/main.dart';

class Practice_Result extends StatelessWidget {
  final int resultScore;

  Practice_Result(this.resultScore);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 39) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 21) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 11) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 1) {
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
            'Score $resultScore',
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Text(
            'Go to Home Page!',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: const Text('Home Page',style: const TextStyle(fontSize: 20)),
            color: Colors.teal[400],
            textColor: Colors.white,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const MyApp(),
              ),);
            },
          ),
        ],
      ),
    );
  }
}