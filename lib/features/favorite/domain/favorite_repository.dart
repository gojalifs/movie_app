import 'package:movie_app/features/favorite/data/floor/movie_entity.dart';

abstract class FavoriteRepository {
  Future<List<MovieEntity>> getFavorites();
  Future<void> addToFavorites(MovieEntity movie);
  Future<void> removeFromFavorite(int id);
}
