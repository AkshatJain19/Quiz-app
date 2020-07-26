import 'package:flutter/material.dart';
import 'package:flutter_apps_1/quiz.dart';
import 'package:flutter_apps_1/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      'q': "What's your favourite anmial",
      'answer': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Snake', 'score': 3},
        {'text': 'Cat', 'score': 4}
      ]
    },
    {
      'q': "What's your favourite colour",
      'answer': [
        {'text': 'Green', 'score': 2},
        {'text': 'Black', 'score': 4},
        {'text': 'White', 'score': 1},
        {'text': 'Red', 'score': 3}
      ]
    },
    {
      'q': "What's the best activity",
      'answer': [
        {'text': 'Playing', 'score': 3},
        {'text': 'Studing', 'score': 1},
        {'text': 'Sleeping', 'score': 4},
        {'text': 'Eating', 'score': 2}
      ]
    }
  ];
  var questionindex = 0;
  var totalscore = 0;
  void resetsate() {
    setState(() {
      questionindex = 0;
      totalscore = 0;
    });
  }

  void answerquestion(int score) {
    if (questionindex < questions.length) {
      print('more questions');
    }
    totalscore += score;
    setState(() {
      questionindex = questionindex + 1;
    });
    print('button');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My first app'),
            ),
            body: questionindex < questions.length
                ? Quiz(
                    questions: questions,
                    answerquestion: answerquestion,
                    questionindex: questionindex,
                  )
                : Result(totalscore, resetsate)));
  }
}
