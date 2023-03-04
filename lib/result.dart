import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score,this.reset);
  String get result{
     String text="your score:";
     String sc=score.toString();
     text+=sc;
    return text;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,children:[
        Text(result,
        style:TextStyle(color:Colors.black,fontSize:25,fontWeight:FontWeight.bold,),
       textAlign:TextAlign.center,
        ),
        ElevatedButton(style:ElevatedButton.styleFrom(primary:Colors.blue),onPressed:reset, child: Text("Reset")),
        TextButton(style:TextButton.styleFrom(primary:Colors.blue),onPressed:reset, child: Text("Reset")),
        OutlinedButton(style:OutlinedButton.styleFrom(primary:Colors.blue,side:BorderSide(color:Colors.blue)),onPressed:reset, child: Text("Reset")),
      ]));
}
}