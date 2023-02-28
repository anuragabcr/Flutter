import 'package:flutter/material.dart';
import 'package:quizzler/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(child: Text('Quizzler')),
        backgroundColor: Colors.teal,
      ),
      body: const QuizzlerPage(),
    ),
  ));
}

class QuizzlerPage extends StatefulWidget {
  const QuizzlerPage({Key? key}) : super(key: key);

  @override
  State<QuizzlerPage> createState() => _QuizzlerPageState();
}

class _QuizzlerPageState extends State<QuizzlerPage> {
  List<Widget> scoreKeeper = [];
  List<Question> questionBank = [
    Question('You can lead a cow down stairs but nut up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\' blood is green.', true)
  ];
  int questionIndex = 0;

  void checkAnswer(bool answer) {
    if (questionIndex == 2) {
      Alert(
              context: context,
              title: "Quiz End",
              desc: "You have reached the end of quiz.")
          .show();
      questionIndex = 0;
    } else {
      questionIndex++;
    }
    if (answer) {
      scoreKeeper.add(
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      scoreKeeper.add(
        const Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Center(
          child: Text(
            questionBank[questionIndex].question,
            style: const TextStyle(color: Colors.white, fontSize: 40),
          ),
        )),
        Container(
          margin: const EdgeInsets.all(10),
          child: TextButton(
            onPressed: () {
              setState(() {
                checkAnswer(true == questionBank[questionIndex].answer);
              });
            },
            style: TextButton.styleFrom(backgroundColor: Colors.green),
            child: const Text(
              'True',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: TextButton(
            onPressed: () {
              setState(() {
                checkAnswer(false == questionBank[questionIndex].answer);
              });
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text(
              'False',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
