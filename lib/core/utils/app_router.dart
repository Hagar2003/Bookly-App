import 'package:bookly_app/features/home/presentation/view_models/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/home_view.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: ('/'),
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: ('/homeView'),
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: ('/bookDetailsView'),
      builder: (context, state) => const BookDetailsView(),
    )
  ]);
}
