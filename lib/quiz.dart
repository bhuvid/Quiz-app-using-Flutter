import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int option;
  final Function answerQuestion;
  Quiz({ @required this.option,@required this.questions,@required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[option]["questionText"].toString()),
        ...(questions[option]["answerText"] as List<Map<String,Object>>).map(
          (answer){return Answer(()=>answerQuestion(answer["score"]),answer["text"]);}
        ).toList()
      ],
      );
  }
}