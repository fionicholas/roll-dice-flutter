import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 4;
  var rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  print('left button pressed');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('right button pressed');
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        ButtonTheme(
          buttonColor: Colors.white,
          minWidth: 200.0,
          height: 60.0,
          child: RaisedButton(
            onPressed: () {
              setState(() {
                randomDice();
              });
            },
            child: Text('Roll Dice'),
          ),
        )
      ],
    );
  }

  void randomDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
}