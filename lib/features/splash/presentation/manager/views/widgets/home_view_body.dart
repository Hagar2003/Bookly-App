import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/splash/presentation/manager/views/widgets/books_list_view.dart';
import 'package:bookly_app/features/splash/presentation/manager/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomAppBar(),
          BooksListView(),
          Container(
            width: double.infinity,
            child: Text(
              '   Best Seller',
              textAlign: TextAlign.start,
              style: Styles.titleMed,
            ),
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 120,
      child: Row(
        children: [
        AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  fit: BoxFit.fill,
                   image: AssetImage(AssetData.testt))),
        ),
      )
        ],
      ),
    );
  }
}
