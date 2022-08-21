import 'package:flutter/material.dart';
import 'package:bmi_flutter/screens/input_file.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //     theme: ThemeData(
    //         // backgroundColor: Color(0xFF61481C),
    //       scaffoldBackgroundColor: Color(0xFF1C0A00),
    //         colorScheme: ColorScheme.fromSwatch().copyWith(
    //
    //           primary: const Color(0xFF1C0A00),
    //           secondary: const Color(0xFFA47E3B),
    //
    //         ),
    //       textTheme: TextTheme(
    //         bodyText2: TextStyle(
    //           color: Colors.white,
    //         )
    //       )
    //     ),
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Color(0xFF0F3D3E),
                    colorScheme: ColorScheme.fromSwatch().copyWith(

                      primary: const Color(0xFF100F0F),
                      secondary: const Color(0xFF100F0F),

                    ),
          ),
      home: InputPage(),
    );
  }
}

