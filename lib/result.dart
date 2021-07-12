
import 'package:flutter/material.dart';
class Result  extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);
  String get resultPhrase{
    var resultText;
    if(resultScore<=8){
      resultText='You are awesome';
    }else if(resultScore<=12){
      resultText='pretty likable';
    }else if(resultScore<=16){
      resultText='Strange';
    }else {
      resultText="bad";
    }
    return resultText;
  }
  

  @override
  Widget build(BuildContext context) {
    return Center(
       child:Column(
         children: [
           Text(
             resultPhrase,
           style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
           textAlign: TextAlign.center,
           ),
           FlatButton(child: Text('restat'),
           textColor: Colors.blue,
           onPressed:resetHandler ,
           ),
         ],
       ),
       );
  }
}