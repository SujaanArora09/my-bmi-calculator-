import 'package:bmi_calculator/numbers.dart';
import 'package:flutter/material.dart';

class wheelselector3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView.useDelegate(
      itemExtent: 50,
      perspective: 0.001,
      diameterRatio: 1.2,
      physics: FixedExtentScrollPhysics(),
      childDelegate: ListWheelChildBuilderDelegate(
          childCount: 101,
          builder: (context, index) {
            return MyNumbers(
              numbers: index,
              start: 20,
            );
          }),
    );
  }
}
