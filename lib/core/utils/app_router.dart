
import 'package:bookly_app/features/home/presentation/view_models/views/home_view.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/splash_view.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: ('/'),
      builder: (context, state) => const SplashView(),
    ),
      GoRoute(
      path: ('/homeView'),
      builder: (context, state) => const HomeView(),
    )
  ]);
}
