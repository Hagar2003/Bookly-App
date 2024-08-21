import 'package:bookly_app/features/home/presentation/view_models/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox( height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return Padding(
          padding:const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListViewItem(),
        );
      }),
    );
  }
}