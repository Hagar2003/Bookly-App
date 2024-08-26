
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      // child: CachedNetworkImage(fit: BoxFit.fill,
      //   imageUrl: image,
      //   errorWidget: (context, url, error) =>Icon (Icons.access_alarm),
      //   ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:DecorationImage(
              fit:BoxFit.fill,
              image:  NetworkImage(image))),
      ))
    ;
  }
}


