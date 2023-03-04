
import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback handle;
  final String answer;
  Answer(this.handle,this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child:RaisedButton(color:Colors.lightBlue,child:Text(answer),onPressed:handle,)
    );
  }
}