import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:Column(children: [
  SafeArea(child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: AppBarDetails(),
  )),
  Padding(
    padding:  EdgeInsets.symmetric(horizontal: 
    MediaQuery.of(context).size.width*.25),
    child: ListViewItem(),),SizedBox(height: 36,),
    Text('The Jungle Book',style: Styles.textStyle30,),SizedBox(height: 6,),
      Text('Rudyard Kipling',style:
       Styles.textStyle18.copyWith(color: Color(0xff707070),fontStyle: FontStyle.italic),),
       SizedBox(height: 18,),
        Row(
          children: [SizedBox(width: 160,),
            BookRating(),
          ],
        )
  
  
      ]),
    );
  }
}

class AppBarDetails extends StatelessWidget {
  const AppBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      IconButton(onPressed: (){},
       icon: Icon(Icons.close,size: 30,)),
         IconButton(onPressed: (){},
       icon: Icon(Icons.shopping_cart_outlined,size: 30,)),
       
    ],);
  }
}