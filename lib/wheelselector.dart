import 'package:bmi_calculator/numbers.dart';
import 'package:flutter/material.dart';

final double bmivalue = 3.0;

class wheelselector extends StatefulWidget {
  wheelselector({
    required this.perspective,
    required this.axix,
  });
  final double perspective;
  final double axix;

  int bmi = 0;

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView.useDelegate(
      itemExtent: 50,
      perspective: perspective,
      diameterRatio: 1.2,
      offAxisFraction: axix,
      physics: const FixedExtentScrollPhysics(),
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

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
