import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/list_view_item.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(child: 
     Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [CustomTextField(),SizedBox(height: 20,),
          Container(width: double.infinity,
            child: Text('Search Results',style: Styles.textStyle20,)),
            SizedBox(height: 15,),
          Expanded(child: SearchResult())],
        ),
      ),
    )]);
  }
}

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
    physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          //child: BestSellerListViewItem(),
          child: Text('data'),
        );
      },
      itemCount: 10,
    );
  }
}