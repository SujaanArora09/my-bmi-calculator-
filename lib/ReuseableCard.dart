import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.colour, required this.CardChild});
  final Color colour;
  final Widget CardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: (Offset(4.0, 4.0)),
              ),
              const BoxShadow(
                color: Colors.white,
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: (Offset(-4.0, -4.0)),
              )
            ]),
        child: CardChild);
  }
}
