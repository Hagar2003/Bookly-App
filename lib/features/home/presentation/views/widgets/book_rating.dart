import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});
  final num rating;
  final num count;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, size: 16, color: Colors.yellow),
        SizedBox(
          width: 11.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 8,
        ),
        Opacity(
          opacity: .8,
          child: Text(
            '(${count.toString()}) ',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w800),
          ),
        )
      ],
    );
  }
}
