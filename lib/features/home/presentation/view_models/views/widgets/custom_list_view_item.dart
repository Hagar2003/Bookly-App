import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(color: Colors.pink,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetData.test))),
      ),
    );
  }
}
