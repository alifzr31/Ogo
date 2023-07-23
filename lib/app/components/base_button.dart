import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.bgColor,
    this.fgColor,
    this.bold,
    this.size,
  }) : super(key: key);

  final String text;
  final void Function()? onPressed;
  final Color? bgColor;
  final Color? fgColor;
  final FontWeight? bold;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontWeight: bold, fontSize: size),
      ),
    );
  }
}
