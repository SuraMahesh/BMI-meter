import 'dart:math';

class CalculatorBMI {
  CalculatorBMI({this.height, this.weight});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI() {
     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    } else if(_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getDetails(){
    if(_bmi >= 25){
      return 'You have a higher than normal body Weight.Try to exercise more.';
    } else if(_bmi > 18.5) {
      return 'You have a Normal  body Weight, GOOD Job.';
    } else {
      return 'You have a lower than normal body Weight, You can Eat bit more.';
    }
  }

}