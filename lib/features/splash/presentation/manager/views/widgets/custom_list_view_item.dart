import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          //height:MediaQuery.of(context).size.height*.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AssetData.testt))),
        ),
      ),
    );
  }
}
