import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/data/repos/home_repo_impementation.dart';
import 'package:bookly/features/home/presentation/view_model/similar_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_page.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentations/views/splash_screen.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter  {

  static const kHomeScreenPath = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path:kHomeScreenPath,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path:kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create:(ctx)=>SimilarCubit(getIt.get<HomeRepoImplementation>()) ,
          child:  BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ), GoRoute(
        path:kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}