import 'package:flutter/material.dart';

class LargeTextWidget extends StatelessWidget {
  const LargeTextWidget(
      {Key? key, this.size = 30, this.color = Colors.black, required this.text})
      : super(key: key);
  final double size;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
