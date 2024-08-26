import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            CustomAppBar(),
            BooksListView(),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: Text(
                '  Newest Books',
                textAlign: TextAlign.start,
                style: Styles.textStyle20.copyWith(fontSize: 22),
              ),
            ),
            SizedBox(
              height: 10,
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



