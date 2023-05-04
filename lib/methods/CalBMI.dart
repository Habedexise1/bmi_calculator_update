import 'dart:math';

class CalculateBMI {
  final int height;
  final int weight;
  late double _bmi;

  CalculateBMI({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getFeedback() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more. Those who are overweight (BMI of 25 to 29.9) are recommended to lose weight.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Congratulations!';
    } else {
      return 'Eat more frequently. You are underweight. Eat more to feel full faster.';
    }
  }
}
