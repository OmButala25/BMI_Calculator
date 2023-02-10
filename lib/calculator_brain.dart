import 'dart:math';

class calculatorbrain {
  calculatorbrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0.0;

  String calculatebmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'Overweighted';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweighted';
    }
  }

  String getinterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to do some exercise';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You should eat a bit more';
    }
  }
}
