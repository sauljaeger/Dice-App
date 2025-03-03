import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.black12,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void swap(){
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Expanded(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      swap();
                      print('diceNumber for the left = $leftDiceNumber');
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice$leftDiceNumber.png'),
                  ),
                )
            ),
            Expanded(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      swap();
                      print('dicenumber for the right = $rightDiceNumber');
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice$rightDiceNumber.png'),
                  ),
                )),

          ],
        ),
      ),
    );
  }
}
