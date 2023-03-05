import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Map<String, Object> getResult() {
    calculateBmi();
    if (_bmi >= 25) {
      return {
        "result": "OVERWEIGHT",
        "score": calculateBmi(),
        "msg":
            "You have a Higher than normal body weight. Try to exercise more."
      };
    } else if (_bmi > 18.5) {
      return {
        "result": "Normal",
        "score": calculateBmi(),
        "msg": "You have normal body weight. Good Job."
      };
    } else {
      return {
        "result": "UNDERWEIGHT",
        "score": calculateBmi(),
        "msg":
            "You have a Lower than normal body weight. You can eat a bit more."
      };
    }
  }
}
