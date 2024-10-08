import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books/featurd_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUp();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  FeaturdBooksCubit(getIt.get<HomeRepoImplementation>())..fetchFeaturedBooks()),
          BlocProvider(
              create: (context) =>
                  NewestBooksCubit(getIt.get<HomeRepoImplementation>())..fetchNewestBooks()),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
              scaffoldBackgroundColor: KprimaryColor),
        ));
  }
}
