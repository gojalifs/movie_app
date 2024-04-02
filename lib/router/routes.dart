import 'package:go_router/go_router.dart';
import 'package:movie_app/features/about_us/presentation/abous_us_screen.dart';
import 'package:movie_app/features/auth/presentation/login_screen.dart';
import 'package:movie_app/features/favorite/presentation/favorite_screen.dart';
import 'package:movie_app/features/initial/presentation/initial_screen.dart';
import 'package:movie_app/features/main_navigator_page.dart';
import 'package:movie_app/features/movies/presentation/home_screen.dart';
import 'package:movie_app/features/movies/presentation/movie_detail_screen.dart';
import 'package:movie_app/features/search/presentation/search_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const InitialScreen(),
    ),
    GoRoute(
      path: HomePageNavigator.route,
      builder: (context, state) => const HomePageNavigator(),
    ),
    GoRoute(
      path: HomeScreen.route,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: LoginScreen.route,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '${MovieDetailScreen.route}:movieId',
      builder: (context, state) => MovieDetailScreen(
        movieId: state.pathParameters['movieId'].toString(),
      ),
    ),
    GoRoute(
      path: FavoriteScreen.route,
      builder: (context, state) => const FavoriteScreen(),
    ),
    GoRoute(
      path: SearchScreen.route,
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: AboutUsScreen.route,
      builder: (context, state) => const AboutUsScreen(),
    ),
  ],
);
