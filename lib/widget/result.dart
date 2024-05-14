import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function q;
  final int total_score;
   const Result(this.q, this.total_score);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          'you have total score is $total_score',
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        TextButton(onPressed:(){
          q();
        },
            child: const Text("get restart the app",style:TextStyle(color: Colors.red,fontSize: 20),))
      ],
    );
  }
}
