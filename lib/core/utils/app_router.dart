import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books/similar_boooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/home/presentation/views/splash_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/bookDetailsView';
    static const kSearchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: ('/'),
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    // GoRoute(
    //   path: ('/bookDetailsView'),
    //   builder: (context, state) => BookDetailsView(bookModel: state.extra as BookModel,),
    // ),
      GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => BlocProvider(create: 
      (context)=>SimilarBoooksCubit(    HomeRepoImplementation(
                ApiService(
                  Dio(),))),
      child: BookDetailsView(bookModel: state.extra as BookModel,),)
    ),

    
  ]);
}


