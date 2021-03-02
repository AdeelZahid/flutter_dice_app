import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  MagicBall({Key key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int indexOfBall = 1;
  void askmeAnything() {
    setState(() {
      indexOfBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Magic Ball Challenge'),
          backgroundColor: Colors.blue,
          toolbarHeight: 80.0,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Click Me .. ',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: GestureDetector(
                    onTap: () => askmeAnything(),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Image(
                        image: AssetImage('Assets/images/ball$indexOfBall.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
