import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final BorderRadius? borderRadius;
  final Color textColor;
  final Color backgroundColor;

  const CustomButton(
      {super.key,
      this.borderRadius,
      required this.text,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(15.0),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(color: textColor),
        ),
      ),
    );
  }
}
