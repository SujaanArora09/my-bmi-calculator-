import 'dart:math';

class CalculateBmi {
  CalculateBmi({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 18.5) {
      return 'Normal';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 40) {
      return 'Obese';
    } else {
      return 'Underweight';
    }
  }
}
