import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDiceNumber = 1;
  int RightDiceNumber = 1;

  void ChangeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            'Dice',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Row(children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                ChangeDiceNumber();
              },
              child: Image(
                image: AssetImage('images/img$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                ChangeDiceNumber();
              },
              child: Image(
                image: AssetImage('images/img$RightDiceNumber.png'),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
