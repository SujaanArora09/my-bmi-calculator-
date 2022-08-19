import 'package:bmi_calculator/input_page2.dart';
import 'package:flutter/material.dart';

class MyNumbers extends StatelessWidget {
  int numbers;
  int start ;
  MyNumbers({required this.numbers,required this.start});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          (numbers + start).toString(),
          style: const TextStyle(
              fontSize: 32, fontWeight: FontWeight.w400, color: textColor),
        ),
      ),
    );
  }
}
