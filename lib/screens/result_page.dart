import 'package:flutter/material.dart';
import 'package:bmi_flutter/constants.dart';
import 'package:bmi_flutter/components/reusable_card.dart';
// import 'package:bmi_flutter/screens/input_file.dart';
import 'package:bmi_flutter/components/bottomButton.dart';

class Result extends StatelessWidget {

  Result({required this.bmi, required this.resultText, required this.remarkText});

  final String bmi;
  final String resultText;
  final String remarkText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCLUATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Your Result',
            style: kheightTextStyle,
          ),
          Expanded(
            child: ReusableCard(
              rang: kinactiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kWeightCategoryTextStyle,
                  ),

                  Text(
                    bmi,
                    style: kBMITextStyle,
                  ),

                  Text(
                    remarkText,
                    style: kcardChildTextStyle,
                  )
                ],
              ),
              cardGestureDetectorOnTap: () {},
            ),
          ),
          BottomButton(
            reDirect: (){
              Navigator.pop(context);
            },
            buttonText: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}

