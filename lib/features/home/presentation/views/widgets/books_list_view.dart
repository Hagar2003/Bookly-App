import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books/featurd_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturdBooksCubit, FeaturdBooksState>(
        builder: (context, state) {
      if (state is FeaturdBooksSuccess) {
        return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.25,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (contest, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: GestureDetector(onTap: () {
                          GoRouter.of(context).push(
                            AppRouter.kBookDetailsView,
                            extra: state.books[index] ,
                          );
                        },
                        child: ListViewItem(
                          image:
                              state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                                  '',
                    ),
                  ));
                }));
      } else if (state is FeaturdBooksFailure) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.33,
          child: CustomError(
            erMessage: state.erorMessage,
          ),
        );
      } else {
        return CustomLoadingIndicator();
      }
    });
  }
}
