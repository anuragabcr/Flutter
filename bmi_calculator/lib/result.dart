import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> bmi =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 30),
        )),
        backgroundColor: Colors.black54,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
              child: Card(
            color: Color(0xff111328),
            child: Center(
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          )),
          Expanded(
              flex: 5,
              child: Card(
                color: const Color(0xff1d1e33),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmi['result'].toString(),
                      style: const TextStyle(fontSize: 40, color: Colors.green),
                    ),
                    Text(
                      bmi['score'].toString(),
                      style: const TextStyle(
                          fontSize: 50,
                          color: Colors.white30,
                          fontWeight: FontWeight.bold),
                    ),
                    Center(
                      child: Text(
                        bmi['msg'].toString(),
                        style: const TextStyle(
                            fontSize: 30, color: Colors.white70),
                      ),
                    )
                  ],
                ),
              )),
          const SizedBox(
            height: 5,
          ),
          Expanded(
              child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text(
              'Re-Calculate',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ))
        ],
      ),
    );
  }
}
