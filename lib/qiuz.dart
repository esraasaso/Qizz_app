import 'package:flutter/material.dart';
import 'widget/answer_text.dart';
import 'widget/question.dart';
class Quiz extends StatelessWidget {
 final List<Map<String, Object>> question_text;
 final int index_text;
 final Function fun;
Quiz(this.index_text,this.question_text,this.fun);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question_text[index_text]['question'].toString()),
        ...(question_text[index_text]['Answers'] as List<Map<String,Object>>).map((x){
          return Answer_text(x['text'].toString(),(){fun(x['score']);});
        })
      ],
    );
  }
}
