import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/auth/data/auth_repository_impl.dart';
import 'package:movie_app/features/auth/domain/auth_repository.dart';
import 'package:movie_app/features/favorite/data/favorite_repository_impl.dart';
import 'package:movie_app/features/favorite/data/floor/movie_database.dart';
import 'package:movie_app/features/favorite/domain/favorite_repository.dart';
import 'package:movie_app/features/movies/data/movies_repository_impl.dart';
import 'package:movie_app/features/movies/data/network/api_call.dart';
import 'package:movie_app/features/movies/domain/movies_repository.dart';
import 'package:movie_app/features/search/data/network/api_call.dart';
import 'package:movie_app/features/search/data/search_repository_impl.dart';
import 'package:movie_app/features/search/domain/search_repository.dart';
import 'package:movie_app/injector/injector.config.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
  asExtension: true,
)
Future configureDependencies() async {
  final database = await $FloorAppDatabase.databaseBuilder('app.db').build();
  getIt.registerLazySingleton<AppDatabase>(
    () => database,
  );

  getIt.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );
  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(getIt<SharedPreferences>()),
  );

  getIt.registerSingleton<MoviesRepository>(
    MoviesRepositoryImpl(apiCall: MovieApiCall()),
  );

  getIt.registerSingleton<FavoriteRepository>(
    FavoriteRepositoryImpl(db: getIt<AppDatabase>()),
  );

  getIt.registerSingleton<SearchRepository>(
    SearchRepositoryImpl(apiCall: SearchApiCall()),
  );

  return getIt.init();
}
