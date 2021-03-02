import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Andropple Dicee',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int valOfDiceRight = 1;
  int valOfDiceLeft = 1;

  void _diceIncrease() {
    setState(() {
      valOfDiceLeft = Random().nextInt(6) + 1;
      valOfDiceRight = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Andropple Dicee'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  child: Image(
                    image: AssetImage('Assets/images/dice$valOfDiceLeft.png'),
                  ),
                  onPressed: () {
                    _diceIncrease();
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () => _diceIncrease(),
                  child: Image(
                    image: AssetImage('Assets/images/dice$valOfDiceRight.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
