// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:movie_app/features/auth/data/auth_repository_impl.dart' as _i3;
import 'package:movie_app/features/favorite/data/favorite_repository_impl.dart'
    as _i5;
import 'package:movie_app/features/favorite/data/floor/movie_database.dart'
    as _i6;
import 'package:movie_app/features/movies/data/movies_repository_impl.dart'
    as _i8;
import 'package:movie_app/features/movies/data/network/api_call.dart' as _i7;
import 'package:movie_app/features/search/data/network/api_call.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AuthRepositoryImpl>(
        () => _i3.AuthRepositoryImpl(gh<_i4.SharedPreferences>()));
    gh.factory<_i5.FavoriteRepositoryImpl>(
        () => _i5.FavoriteRepositoryImpl(db: gh<_i6.AppDatabase>()));
    gh.factory<_i7.MovieApiCall>(() => _i7.MovieApiCall());
    gh.singleton<_i8.MoviesRepositoryImpl>(
        () => _i8.MoviesRepositoryImpl(apiCall: gh<_i7.MovieApiCall>()));
    gh.factory<_i9.SearchApiCall>(() => _i9.SearchApiCall());
    return this;
  }
}
