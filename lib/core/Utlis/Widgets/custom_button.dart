import 'package:book_app/core/Utlis/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.borderRadius,  this.textSize,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final double? textSize;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16)
          )
        ),
        onPressed: () {},
        child: Text(text,
      style: Styles.textStyle18.copyWith(
        color: textColor,
        fontWeight: FontWeight.w900,
          fontSize: textSize
      ) ,));
  }
}
