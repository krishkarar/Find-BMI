import 'package:flutter/material.dart';
import 'package:bmi_flutter/constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.reDirect, required this.buttonText});

  final VoidCallback reDirect;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: reDirect,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kBottomButtonTextStyle,
          ),
        ),
        color: kbottomButtonColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kbottomButtonHeight,
      ),
    );
  }
}
