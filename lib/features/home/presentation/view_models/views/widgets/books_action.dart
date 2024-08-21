

import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Expanded(
        child: CustomButton(
          backGroundColor: Colors.white,
           TextColor: Colors.black,
         borderRadius: BorderRadius.only(topLeft: Radius.circular(16),
         bottomLeft: Radius.circular(16)), text: '199.9 £',),
      ),
       Expanded(
         child: CustomButton(
          backGroundColor: Color(0xffEF8262),
           TextColor: Colors.white,
         borderRadius: BorderRadius.only(topRight: Radius.circular(16),
         bottomRight: Radius.circular(16)), text: 'Free Preview',),
       )],
    );
  }
}
