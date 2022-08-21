
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_flutter/components/reusable_card.dart';
import 'package:bmi_flutter/components/cardChildWidget.dart';
import 'package:bmi_flutter/constants.dart';
import 'package:bmi_flutter/screens/result_page.dart';
import 'package:bmi_flutter/components/bottomButton.dart';
import 'package:bmi_flutter/components/roundIconButton.dart';
import 'package:bmi_flutter/calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kinactiveCardColor;
  Color femaleCardColor = kinactiveCardColor;
  int height = 180;
  int weight = 70;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    rang: maleCardColor,
                    cardChild: cardChildWidget(
                      cardChildIcon: FontAwesomeIcons.mars,
                      cardChildText: 'MALE',
                    ),
                    cardGestureDetectorOnTap: () {
                      // print('male was pressed');
                      setState(() {
                        maleCardColor = maleCardColor == kinactiveCardColor
                            ? kactiveCardColor
                            : kinactiveCardColor;
                        femaleCardColor = maleCardColor == kactiveCardColor
                            ? kinactiveCardColor
                            : kactiveCardColor;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    rang: femaleCardColor,
                    cardChild: cardChildWidget(
                      cardChildIcon: FontAwesomeIcons.venus,
                      cardChildText: 'FEMALE',
                    ),
                    cardGestureDetectorOnTap: () {
                      // print('female was pressed');
                      setState(() {
                        femaleCardColor = femaleCardColor == kinactiveCardColor
                            ? kactiveCardColor
                            : kinactiveCardColor;
                        maleCardColor = femaleCardColor == kactiveCardColor
                            ? kinactiveCardColor
                            : kactiveCardColor;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              rang: kinactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kcardChildTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kheightTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kcardChildTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      min: 120.0,
                      max: 220.0,
                    ),
                  )
                ],
              ),
              cardGestureDetectorOnTap: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    rang: kinactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kcardChildTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: kheightTextStyle,
                            ),
                            Text(
                              'kg',
                              style: kcardChildTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                    cardGestureDetectorOnTap: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    rang: kinactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kcardChildTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: kheightTextStyle,
                            ),
                            Text(
                              'years',
                              style: kcardChildTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                    cardGestureDetectorOnTap: () {},
                  ),
                ),
              ],
            ),
          ),
         BottomButton(
             reDirect: (){

               CalculatorBrain calc = CalculatorBrain(
                  height: height,
                   weight: weight,
               );

               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) {
                     return Result(
                       bmi: calc.getBMI(),
                       remarkText: calc.remark(),
                       resultText: calc.resultText(),
                     );
                   },
                 ),
               );
             },
             buttonText: 'CALCULATE')
        ],
      ),
    );
  }
}



// Container(
// margin: EdgeInsets.all(15.0),
// decoration: BoxDecoration(
// color: Color(0xFF5A8F7B),
// borderRadius: BorderRadius.circular(10.0),
// ),
// height: 200.0,
// width: 150.0,
// )

//
// onTap: () {
// print('male was pressed');
// setState ((){
// maleCardColor = maleCardColor == inactiveCardColor ? activeCardColor : inactiveCardColor;
// femaleCardColor = maleCardColor == activeCardColor ? inactiveCardColor : activeCardColor;
// });
// },

// onTap: () {
// // print('female was pressed');
// setState ((){
// femaleCardColor = femaleCardColor == inactiveCardColor ? activeCardColor : inactiveCardColor;
// maleCardColor = femaleCardColor == activeCardColor ? inactiveCardColor : activeCardColor;
// });
// },
