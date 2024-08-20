import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

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
      ),SizedBox(width: 30,),
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(width: MediaQuery.of(context).size.width*.5,
            child: Text(maxLines: 2,
            overflow:TextOverflow.clip , 'Harry Potter and the Golbet of Fire',style: 
            Styles.textStyle20,),
          ),SizedBox(height: 3,),
            Text('J.K. Rowling',style: Styles.textStyle14,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              children: [Text('19.99 £',style: Styles.textStyle20,),
            
            BookRating()
            
            ],)
        ],),
      )
        ],
      ),
    );
  }
}
