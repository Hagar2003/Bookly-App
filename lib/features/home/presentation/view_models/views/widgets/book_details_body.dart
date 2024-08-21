import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/app_bar_details.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          slivers: [  
            SliverFillRemaining(
hasScrollBody: false,
        
          child: Column(
            children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: AppBarDetails(),
            )),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .25),
              child: ListViewItem(),
            ),
            SizedBox(
              height: 36,
            ),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Rudyard Kipling',
              style: Styles.textStyle18
                  .copyWith(color: Color(0xff707070), fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                SizedBox(
                  width: 160,
                ),
                BookRating(),
                
              ],
            ), 
            SizedBox(height: 37,), Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: BooksAction(),
            ),SizedBox(height: 50,),
            Container(width: double.infinity,
              child: Text('  You can also like',style: Styles.textStyle16,)),
              SizedBox(height: 16,),
            SimilarListView()  
          ]),
        ),
      ]),
    ));
  }
}

