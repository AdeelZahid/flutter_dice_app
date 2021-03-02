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

class DicePage extends StatelessWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int val = 5;
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
                    image: AssetImage('Assets/images/dice1.png'),
                  ),
                  onPressed: () {
                    print('left button pressed');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    print('Right button pressed');
                  },
                  child: Image(
                    image: AssetImage('Assets/images/dice$val.png'),
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
