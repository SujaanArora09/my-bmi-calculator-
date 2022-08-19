import 'package:bmi_calculator/numbers.dart';
import 'package:flutter/material.dart';

class wheelselector2 extends StatelessWidget {
  const wheelselector2({required this.whichwheel});
  final bool whichwheel;
  final int height = 0;
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView.useDelegate(
      onSelectedItemChanged: (value) => height,
      itemExtent: 50,
      perspective: 0.003,
      diameterRatio: 1.2,
      offAxisFraction: 0.5,
      physics: const FixedExtentScrollPhysics(),
      childDelegate: ListWheelChildBuilderDelegate(
          childCount: 99,
          builder: (context, index) {
            return MyNumbers(
              numbers: index,
              start: whichwheel == true ? 2 : 120,
            );
          }),
    );
  }
}
