import 'package:flutter/material.dart';

import 'input_page2.dart';

class MyNumbers2 {
  int numbers;
  MyNumbers2({required this.numbers});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          (numbers + 1).toString(),
          style: const TextStyle(
              fontSize: 32, fontWeight: FontWeight.w400, color: textColor),
        ),
      ),
    );
  }
}
