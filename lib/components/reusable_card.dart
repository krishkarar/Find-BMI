import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {


  ReusableCard({required this.rang, required this.cardChild, required this.cardGestureDetectorOnTap });

  final Color rang;
  final Widget cardChild;
  final VoidCallback cardGestureDetectorOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardGestureDetectorOnTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: rang,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}