import 'package:flutter/material.dart';

class MediumTextWidget extends StatelessWidget {
  const MediumTextWidget(
      {Key? key,
      this.size = 16,
      this.color = Colors.black54,
      required this.text})
      : super(key: key);
  final double size;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
