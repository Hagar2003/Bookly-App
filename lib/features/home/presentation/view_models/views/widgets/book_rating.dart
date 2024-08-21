import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar,
        color:Colors.yellow),SizedBox(width: 11.3,),
        Text('4.8',
        style: Styles.textStyle16,),SizedBox(width: 8,),
        Opacity(opacity: .5,
          child: Text('(408)',
          style: Styles.textStyle14.copyWith(
          fontWeight: FontWeight.w600
          ),),
        )
      ],
    );
  }
}