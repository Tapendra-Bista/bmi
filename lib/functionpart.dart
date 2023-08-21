import 'dart:math';

class Funcal {
  Funcal({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;
  String calculatebmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'OVER WEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDER WEIGHT';
    }
  }

  String getinterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal weight.Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal weight. Good job.';
    } else {
      return 'You have a lower than normal weight. You can eat a bit more.';
    }
  }
}
