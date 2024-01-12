import 'dart:math';
import 'package:flutter/material.dart';

final random = Random();
int leftDiceNumber = 1;
int rightDiceNumber = 6;

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dice Roller'),
              Icon(Icons.casino),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 156, 17, 7),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePage createState() {
    return _DicePage();
  }
}

class _DicePage extends State<DicePage> {
  void randomDice() {
    setState(() {
      leftDiceNumber = random.nextInt(6) + 1;
      rightDiceNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: randomDice,
                style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 156, 17, 7))),
                child: Image.asset('lib/images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: randomDice,
                style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 156, 17, 7))),
                child: Image.asset('lib/images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
