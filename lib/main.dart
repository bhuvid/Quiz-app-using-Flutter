import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
/*void main(){
      runApp(MyApp());
}*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
        @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  var _option=0;
  var _totalScore=0;
  final _questions= const[
    {
      "questionText":"What is the orange part of an egg called?",
      "answerText":[
      {"text":"egg","score":0},
      {"text":"yolk","score":10},
      {"text":"orange","score":0},
      {"text":"none","score":0},
      ]
    },
    {
      "questionText": "How many legs do insects have?",
      "answerText":[
        {"text":"6","score":10},
        {"text":"4","score":0},
        {"text":"2","score":0},
        {"text":"8","score":0}
        ]
    },
    {
      "questionText": "What is the closest planet to the Sun?",
      "answerText":[
        {"text":"venus","score":0},
        {"text":"mercury","score":10},
        {"text":"earth","score":0},
        {"text":"saturn","score":0}
        ]
    },
    {
      "questionText": "How many days are there in a year?",
      "answerText":[
        {"text":"366","score":0},
        {"text":"364","score":0},
        {"text":"360","score":0},
        {"text":"365","score":10}
        ]
    },
      {
      "questionText": "What is the name of the tallest mountain on earth?",
      "answerText":[
        {"text":"makalu","score":0},
        {"text":"k2","score":0},
        {"text":"mount everest","score":10},
        {"text":"lhotse","score":0}
        ]
    },
    ];
  void _answerQuestion(int score){
    _totalScore+=score;
    setState(() {
      _option++;
    });
  }
  void _reset(){
    setState(() {
      _option=0;
      _totalScore=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar:AppBar(backgroundColor:Colors.lightBlue,title:Text("First App"),),
      body:(_option < _questions.length) ? Quiz(option:_option,questions:_questions,answerQuestion:_answerQuestion)
       :Result(_totalScore,_reset),
      ));
  }
} 