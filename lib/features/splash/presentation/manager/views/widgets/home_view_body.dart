
import 'package:bookly_app/features/splash/presentation/manager/views/widgets/books_list_view.dart';
import 'package:bookly_app/features/splash/presentation/manager/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomAppBar(), 
      BooksListView()],
    );
  }
}


