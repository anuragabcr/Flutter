import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:flutter/material.dart';

const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  dynamic selectedGender;
  int height = 150;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 30),
        )),
        backgroundColor: Colors.black54,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Card(
                        color: selectedGender == Gender.male
                            ? activeCardColor
                            : inactiveCardColor,
                        child: Column(
                          children: const [
                            Icon(
                              Icons.male,
                              size: 150,
                              color: Colors.blueAccent,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 25),
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Card(
                      color: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.female,
                            size: 150,
                            color: Colors.purpleAccent,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                                color: Colors.purpleAccent, fontSize: 25),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Card(
                  color: const Color(0xff1d1e33),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Height',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '$height cm',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 60),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Slider(
                        min: 100,
                        max: 250,
                        value: height.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                      ),
                    ],
                  ))),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Card(
                    color: const Color(0xff1d1e33),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Weight',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          '$weight Kg',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 60),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 25,
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  weight = weight + 1;
                                });
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xff12031)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(color: Colors.red),
                                  ))),
                              child: const Icon(
                                Icons.add,
                                size: 40,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  weight = weight - 1;
                                });
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xff12031)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(color: Colors.red),
                                  ))),
                              child: const Icon(
                                Icons.remove,
                                size: 40,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: const Color(0xff1d1e33),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Age',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          '$age',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 60),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 25,
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  age = age + 1;
                                });
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xff12031)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(color: Colors.red),
                                  ))),
                              child: const Icon(
                                Icons.add,
                                size: 40,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  age = age - 1;
                                });
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xff12031)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(color: Colors.red),
                                  ))),
                              child: const Icon(
                                Icons.remove,
                                size: 40,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  CalculatorBrain cal =
                      CalculatorBrain(height: height, weight: weight);
                  Navigator.pushNamed(context, '/result',
                      arguments: cal.getResult());
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                child: const Text(
                  'Calculate',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ))
        ],
      )),
    );
  }
}
