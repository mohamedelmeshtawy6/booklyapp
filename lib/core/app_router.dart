import 'package:booklyapp/core/service_locator.dart';
import 'package:booklyapp/features/home/data/model/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repo/home_detail_repo_implementation.dart';
import 'package:booklyapp/features/home/presentation/viewmodel/similars/similar_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/home_view.dart';
import 'package:booklyapp/features/search/presentation/view/search_view.dart';
import 'package:booklyapp/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../features/home/presentation/views/details_view.dart';

abstract class AppRouter {
  static const khomeView = '/HomeView';
  static const kdetailsView = '/detailsView';
  static const ksearchView = '/searchView';
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
      builder: (context, state) => BlocProvider(
        create: (context) =>
            SimilarCubit(getIt.get<HomeDetailRepoImplementation>()),
        child: DetailsView(book: state.extra as BookModel),
      ),
    ),
    GoRoute(
      path: '/searchView',
      builder: (context, state) => const SearchView(),
    )
  ]);
}
