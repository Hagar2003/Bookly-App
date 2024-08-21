import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundColor,
      required this.TextColor,
      required this.borderRadius, required this.text});
  final Color backGroundColor;
  final Color TextColor;
  final BorderRadius borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
            backgroundColor: backGroundColor,
          ),
          child: Text(
            text,
            style: Styles.textStyle16
                .copyWith(fontWeight: FontWeight.bold, color: TextColor),
          )),
    );
  }
}
