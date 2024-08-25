import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.erMessage});
  final String erMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      erMessage,
      style: Styles.textStyle18,
    );
  }
}
