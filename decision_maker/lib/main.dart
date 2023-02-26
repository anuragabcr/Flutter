import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(child: Text('Ask Me Anything')),
      ),
      body: const DecisionPage(),
    ),
  ));
}

class DecisionPage extends StatefulWidget {
  const DecisionPage({Key? key}) : super(key: key);

  @override
  State<DecisionPage> createState() => _DecisionPageState();
}

class _DecisionPageState extends State<DecisionPage> {
  var ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade200,
      child: TextButton(
          onPressed: () {
            setState(() {
              ballNum = Random().nextInt(5) + 1;
            });
          },
          child: Center(child: Image.asset('images/ball$ballNum.png'))),
    );
  }
}
