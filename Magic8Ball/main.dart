import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: EightBallPage(),
      ),
    ),
  );
}

class EightBallPage extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBallPage> {
  int randomEightBall = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randomEightBall = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$randomEightBall.png'),
            ),
          ),
        ],
      ),
    );
  }
}
