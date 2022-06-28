import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/self_study.dart';
import 'main.dart';
import 'quiz.dart';
import 'result.dart';
import 'dart:math';

class Start extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StartState();
  }
}

class _StartState extends State<Start> {
  final _questions = const [
    {
      'questionText': 'The Parliament of India cannot be regarded as a sovereign body because',
      'answers': [
        {'text': 'it can legislate only on subjects entrusted to the Centre by the Constitution', 'score': -2},
        {'text': 'it has to operate within the limits prescribed by the Constitution', 'score': -2},
        {'text': 'the Supreme Court can declare laws passed by parliament as unconstitutional if they contravene the provisions of the Constitution', 'score': -2},
        {'text': 'All of the above', 'score': 10},
      ],
    },
    {
      'questionText': 'The name of the Laccadive, Minicoy and Amindivi islands was changed to Lakshadweep by an Act of Parliament in',
      'answers': [
        {'text': '1971', 'score': -2},
        {'text': '1972', 'score': -2},
        {'text': '1973', 'score': 10},
        {'text': '1970', 'score': -2},
      ],
    },
    {
      'questionText': 'The members of the Rajya Sabha are elected by',
      'answers': [
        {'text': 'the people', 'score': -2},
        {'text': 'elected members of the legislative assembly', 'score': 10},
        {'text': 'Lok Sabha', 'score': -2},
        {'text': 'elected members of the legislative council', 'score': -2},
      ],
    },
    {
      'questionText': 'The power to decide an election petition is vested in the',
      'answers': [
        {'text': 'Parliament', 'score': -2},
        {'text': 'High courts', 'score': 10},
        {'text': 'Supreme Court', 'score': -2},
        {'text': 'Election Commission', 'score': -2},
      ],
    },
    {
      'questionText': 'The members of the panchayat are',
      'answers': [
        {'text': 'the electorates of the respective territorial constituencies', 'score': 10},
        {'text': 'nominated by local self-government minister of the state', 'score': -2},
        {'text': 'nominated by the district officer', 'score': -2},
        {'text': 'nominated by the block development organization', 'score': -2},
      ],
    },
    {
      'questionText': 'The Battle of Plassey was fought in',
      'answers': [
        {'text': '1748', 'score': -2},
        {'text': '1757', 'score': 10},
        {'text': '1764', 'score': -2},
        {'text': '1782', 'score': -2},
      ],
    },
    {
      'questionText': 'The territory of Porus who offered strong resistance to Alexander was situated between the rivers of',
      'answers': [
        {'text': 'Sutlej and Beas', 'score': -2},
        {'text': 'Ravi and Chenab', 'score': -2},
        {'text': 'Jhelum and Chenab', 'score': 10},
        {'text': 'Ganga and Yamuna', 'score': -2},
      ],
    },
    {
      'questionText': 'Under Akbar, the Mir Bakshi was required to look after',
      'answers':[
        {'text': 'the land revenue system', 'score': -2},
        {'text': 'the royal household', 'score': -2},
        {'text': 'the state treasury', 'score': -2},
        {'text': 'military affairs', 'score': 10},
      ],
    },
    {
      'questionText': 'The trident-shaped symbol of Buddhism does not represent',
      'answers': [
        {'text': 'Nirvana', 'score': 10},
        {'text': 'Sangha', 'score': -2},
        {'text': 'Buddha', 'score': -2},
        {'text': 'Dhamma', 'score': -2},
      ],
    },
    {
      'questionText': 'To conquer and annex Peshawar and Punjab, Mahmud of Ghazni defeated',
      'answers': [
        {'text': 'Karkotakas', 'score': -2},
        {'text': 'Hindushahis', 'score': 10},
        {'text': 'Arabs', 'score': -2},
        {'text': 'Ghurids', 'score': -2},
      ],
    },
    {
      'questionText': 'Todar Mal was associated with',
      'answers': [
        {'text': 'Literary', 'score': -2},
        {'text': 'Law', 'score': -2},
        {'text': 'Music', 'score': -2},
        {'text': 'Finance', 'score': 10},
      ],
    },
    {
      'questionText': 'Who is the father of Geometry?',
      'answers': [
        {'text': 'Aristotle', 'score': -2},
        {'text': 'Pythagoras', 'score': -2},
        {'text': 'Euclid', 'score': 10},
        {'text': 'Kepler', 'score': -2},
      ],
    },
    {
      'questionText': 'Who was known as Iron man of India?',
      'answers': [
        {'text': 'Govind Ballabh Pant', 'score': -2},
        {'text': 'Jawaharlal Nehru', 'score': -2},
        {'text': 'Subhash Chandra Bose', 'score': -2},
        {'text': 'Sardar Vallabhbhai Patel', 'score': 10},
      ],
    },{
      'questionText': 'ICAO stands for',
      'answers': [
        {'text': 'International Civil Aviation Organization', 'score': 10},
        {'text': 'Indian Corporation of Agriculture Organization', 'score': -2},
        {'text': 'Institute of Company of Accounts Organization', 'score': -2},
        {'text': 'None of the above', 'score': -2},
      ],
    },
    {
      'questionText': 'India has largest deposits of ____ in the world.',
      'answers': [
        {'text': 'gold', 'score': -2},
        {'text': 'copper', 'score': -2},
        {'text': 'mica', 'score': 10},
        {'text': 'None of the above', 'score': -2},
      ],
    },
  ];

  Random random = new Random();
  List <int> numberList= [0];
  var _questionIndex = 0;
  var _questionNumber = 0 ;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = random.nextInt(_questions.length);
      numberList= [_questionIndex];
      _questionNumber = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    _questionNumber = _questionNumber + 1;
    print(_questionNumber);
    print(numberList);
    setState(() {
      _questionIndex = random.nextInt(_questions.length);
      while(numberList.contains(_questionIndex)&& numberList.length<_questions.length) {
        _questionIndex = random.nextInt(_questions.length);
      }
        numberList.add(_questionIndex);
    });
    if (_questionNumber < 10) {
      print('We have more questions!');
    } else if(_questionNumber == 10){
      print('No more questions!');
    }
  }

final GlobalKey<ScaffoldState> skey= GlobalKey<ScaffoldState>();

  void method(){
    skey.currentState?.showSnackBar(SnackBar(content: Text('No Bookmarks Found!!!')));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Time!!'),
        backgroundColor: Colors.cyan[900],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(title: const Text('Home Page'),
                tileColor: Colors.cyan[100],
                trailing: const Icon(Icons.home),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),);
                },
            ),
            ListTile(title: const Text('Self-Study'),
              tileColor: Colors.cyan[100],
              trailing: const Icon(Icons.format_list_bulleted_rounded),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Self_Study(),
                ),);
              },
            ),
            ListTile(title: const Text('Reset Game'),
                tileColor: Colors.cyan[100],
                trailing: const Icon(Icons.restart_alt),
                onTap:(){
                  _resetQuiz();
                  Navigator.pop(context);
                })
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: _questionNumber < 10
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

