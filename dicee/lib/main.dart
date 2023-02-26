import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: const Text('Dicee'), backgroundColor: Colors.red),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNum = 1;
  var rightDiceNum = 2;
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNum = random.nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftDiceNum.png'),
              ),
            )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        rightDiceNum = random.nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$rightDiceNum.png'))),
          ],
        ),
      ),
    );
  }
}
