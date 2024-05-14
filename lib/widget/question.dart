import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/main.dart';
class Question extends StatelessWidget {
 final String question;
  const Question(this.question, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
 return Container(
   margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 0),
   width: double.infinity,
   child: Text(
     question,
     textAlign: TextAlign.center,
     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color:b),
   ),
 );
  }
}
