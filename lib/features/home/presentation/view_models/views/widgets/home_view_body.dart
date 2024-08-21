import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/books_list_view.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomAppBar(),
            BooksListView(),
            Container(
              width: double.infinity,
              child: Text(
                '  Best Seller',
                textAlign: TextAlign.start,
                style: Styles.textStyle20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            
          ],
        ),
      ))
    ,
    SliverFillRemaining(child:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: BestSellerListView(),
    ))]);
  }
}



