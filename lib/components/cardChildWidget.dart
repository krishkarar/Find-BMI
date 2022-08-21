import 'package:flutter/material.dart';
import 'package:bmi_flutter/constants.dart';



class cardChildWidget extends StatelessWidget {

  cardChildWidget({required this.cardChildIcon, required this.cardChildText });

  final IconData cardChildIcon;
  final String cardChildText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardChildIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardChildText,
          style: kcardChildTextStyle,
        )

      ],
    );
  }
}
