import 'package:booklyapp/features/home/presentation/views/home_view.dart';
import 'package:booklyapp/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../features/home/presentation/views/details_view.dart';

abstract class AppRouter {
  static const khomeView = '/HomeView';
  static const kdetailsView = '/detailsView';
  static const ksplashView = '/';

  static final route = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/HomeView',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/detailsView',
      builder: (context, state) => const DetailsView(),
    )
  ]);
}
