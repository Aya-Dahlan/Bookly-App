import 'package:bookly_app/Features/Splash/presentaion/view_models/views/splash_view.dart';
import 'package:bookly_app/Features/home/presentaion/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView='/homeView';
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
        GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
