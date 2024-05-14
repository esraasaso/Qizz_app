import 'package:flutter/material.dart';
import '/qiuz.dart';
import 'widget/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
Color b =Colors.black;
Color w =Colors.white;
class _MyAppState extends State<MyApp> {
  int index_text = 0;
int total_score=0;
  void fun(int score) {
    setState(() {
      index_text++;
      total_score=total_score+score;
    });
    print(index_text);
    print("Answer chose");
    print(total_score);
  }

  void restart() {

    setState(() {
      total_score=0;
      index_text = 0;
    });
  }

  final List<Map<String, Object>> question_text = [
    {
      'question': "what's the favorite color?",
      'Answers': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 20},
        {'text': 'yellow', 'score': 30},
        {'text': 'green', 'score': 40},
      ],
    },
    {
      'question': 'what is the favorite animal?',
      'Answers': [
        {
          'text': 'dog',
          'score': 10,
        },
        {
          'text': 'cat',
          'score': 20,
        },
        {
          'text': 'rabbit',
          'score': 30,
        },
        {
          'text': 'bird',
          'score': 40,
        }
      ]
    },
    {
      'question': 'what is the favorite city?',
      'Answers': [
        {
          'text': 'syria',
          'score': 40,
        },
        {
          'text': 'Turkey',
          'score': 20,
        },
        {
          'text': 'italy',
          'score': 30,
        },
        {
          'text': 'Germany',
          'score': 40,
        }
      ]
    },
  ];
bool isSwitch=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        backgroundColor:w,
        title: Text("QUIZ APP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:b),),
        actions: [
          Switch(
              value: isSwitch, onChanged:(value){
            setState(() {
              isSwitch=value;
              if(isSwitch==true){
                b=Colors.white;
                w=Colors.black;
              }
              if(isSwitch==false){
                b=Colors.black;
                w=Colors.white;
              }
            });
          },
            activeColor: Colors.red,
          inactiveThumbColor: Colors.white,)
        ],
      ),
      body: Container(
        color: w,
        width: double.infinity,
        child: index_text < question_text.length
            ? Quiz(index_text, question_text, fun)
            : Result(() {
                restart();
              },total_score),
      ),
    ));
  }
}
