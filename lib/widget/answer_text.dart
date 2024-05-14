import 'package:flutter/material.dart';
class Answer_text extends StatelessWidget {
final String answer_text;
 final Function click;
Answer_text(this.answer_text,this.click);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed:(){
              click();
            },
            child: Text(
              answer_text,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )));
  }
}
