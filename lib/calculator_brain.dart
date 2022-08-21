import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  // double _bmi;

  String getBMI(){
    double _bmi = (weight)/pow(height/100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String resultText(){
    double remarkBMI = double.parse(getBMI());

    if(remarkBMI>25){
      return('overweight');
    }
    else if(remarkBMI>18){
      return('normal weight');
    }
    else{
      return('underweight');
    }
  }

  String remark(){
    double remarkBMI = double.parse(getBMI());

    if(remarkBMI>25){
      return('move your ass you fat bitch!');
    }
    else if(remarkBMI>18){
      return('normal weight. keep it up champ!');
    }
    else{
      return('eat something you skinny shit!');
    }
  }
}