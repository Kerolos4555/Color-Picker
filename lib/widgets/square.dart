import 'package:flutter/material.dart';

class Squares extends StatelessWidget {
  final Color? color;
  const Squares({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        color: color,
      ),
    );
  }
}
