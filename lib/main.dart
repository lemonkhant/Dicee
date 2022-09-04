import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: DicePage()));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  List<int> changeNumber = [1, 2, 3, 4, 5, 6];
  final _random = new Random();
  int leftDice = 1;
  int rightDice = 1;

  int change() {
    var number = changeNumber[_random.nextInt(changeNumber.length)];
    return number;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.menu_book,
          size: 50.0,
        ),


        title: Center(child: Text('Dice play',textAlign: TextAlign.center,)),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(child: Image.asset('image/index$leftDice.png')),
            SizedBox(width: 20),
            Expanded(child: Image.asset('image/index$rightDice.png')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            leftDice = change();
            rightDice = change();
          });
        },
        child: Icon(Icons.add_circle_outline),
          backgroundColor: Colors.black54,
      ),
    );
  }
}
