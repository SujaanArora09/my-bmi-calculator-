import 'package:bmi_calculator/input_page2.dart';
import 'package:bmi_calculator/wheelselector2.dart';
import 'package:flutter/material.dart';

class CardChildChild extends StatelessWidget {
  CardChildChild({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: textColor),
        )),
        Expanded(
            child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: wheelselector2(
                whichwheel: false,
              ),
            ),
            const Expanded(
                child: Text(
              'cm',
              style: TextStyle(fontSize: 25, color: textColor),
            )),
          ],
        )),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
