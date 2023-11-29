import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/presentation/view_model/best_seller_books_cubit/best_seller_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/similar_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/home/data/repos/home_repo_impementation.dart';
import 'features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create  : (ctx)=>FeaturedBooksCubit(
              getIt.get<HomeRepoImplementation>()
          )..fetchFeaturedBooks()
        ),
        BlocProvider(
          create  : (ctx)=>
              BestSellerBooksCubit(
                  getIt.get<HomeRepoImplementation>()
              )..fetchBestSellerBooks()
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
          // home: const SplashScreen(),
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)

      )),
    );
  }
}

