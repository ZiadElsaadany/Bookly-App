import 'package:bookly/features/home/presentation/views/home_page.dart';
import 'package:bookly/features/splash/presentations/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter  {

  static const kHomeScreenPath = '/homeView';

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
    ],
  );
}