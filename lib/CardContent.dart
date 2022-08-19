import 'package:flutter/material.dart';

class childcardcontent extends StatelessWidget {
  const childcardcontent(
      {required this.gender,
      required this.genderSymbol,
      required this.iconcolor});
  final String gender;
  final IconData genderSymbol;
  final Color iconcolor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderSymbol,
          size: 50,
          color: iconcolor,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          gender,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: iconcolor),
        )
      ],
    );
  }
}
