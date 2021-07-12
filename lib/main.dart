import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main () {
  runApp(MyApp());

}
class MyApp extends StatefulWidget  {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
     final _questions =const[
      {
        'questionText':'What is your fav color?',
        'answers':[{'text': 'Black','score':10},
        {'text': 'red','score':5},
        {'text': 'green','score':3},
        {'text': 'white','score':1},
        ]
      },
      {
        'questionText':'What is your fav animal?',
        'answers':[{'text': 'rabbit','score':10},
        {'text': 'horse','score':5},
        {'text': 'dog','score':3},
        {'text': 'cat','score':1},
        ]
      },
      {
        'questionText':'What is your fav instructo?',
        'answers':[{'text': 'max','score':10},
        {'text': 'max','score':5},
        {'text': 'max','score':3},
        {'text': 'max','score':1},
        ]
      },
    ];

  var _questionIndex = 0;
  var _totalScore=0;
  void _resetQuiz(){
     setState(() {
      _questionIndex=0;
      _totalScore=0;
    }); 


  }
  
  void _answerQuestion(int score){

    _totalScore=_totalScore + score;
    setState(() {
      _questionIndex=_questionIndex+1;
    }); 
    if (_questionIndex <  _questions.length) {
      print('We have more questions');

  } else{
    print('No more questions!');
  }
  }


  @override
  Widget build(BuildContext context){
 
  return MaterialApp(home: Scaffold(
    appBar: AppBar(title:Text('My First App'),),
    body: _questionIndex < _questions.length
    ?  Quiz(answerQuestion: _answerQuestion,
           questionIndex: _questionIndex,
           questions: _questions,
           )
     : Result(_totalScore,_resetQuiz),
  ),
  );
  }
}