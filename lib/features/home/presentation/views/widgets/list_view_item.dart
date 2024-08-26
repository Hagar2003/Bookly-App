import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView,
        extra:
        bookModel);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            ListViewItem(
                image: bookModel.volumeInfo?.imageLinks?.thumbnail ?? ""),
            // AspectRatio(
            //   aspectRatio: 2.8 / 4,
            //   child: Container(
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(8),
            //         image: DecorationImage(
            //             fit: BoxFit.fill, image:
            //             NetworkImage(bookModel.volumeInfo?.imageLinks?.thumbnail ??'')))),
            //   ),

            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      bookModel.volumeInfo?.title ?? "",
                      style: Styles.textStyle20
                          .copyWith(fontStyle: FontStyle.italic, fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Opacity(
                    opacity: .8,
                    child: Text(
                      bookModel.volumeInfo?.authors?[0] ?? "",
                      style: Styles.textStyle14.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free book',
                        style: Styles.textStyle20,
                      ),
                      BookRating(
                          rating: bookModel.volumeInfo?.averageRating ?? 0,
                          count: bookModel.volumeInfo?.ratingsCount ?? 0)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
