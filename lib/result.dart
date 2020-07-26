import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int finalscore;
  String get printresult {
    String result;
    if (finalscore < 8) {
      result = 'You are innocent';
    } else if (finalscore <= 10) {
      result = 'You are somewhat good';
    } else {
      result = 'You are strange';
    }
    return result;
  }

  Result(this.finalscore, this.reset);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          printresult,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: reset,
          child: Text(
            'Restart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ]),
    );
  }
}
