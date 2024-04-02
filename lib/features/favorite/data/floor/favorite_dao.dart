import 'package:floor/floor.dart';
import 'package:movie_app/features/favorite/data/floor/movie_entity.dart';

@dao
abstract class FavoriteDao {
  @Query('SELECT * FROM favorite')
  Future<List<MovieEntity>> getFavorites();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> addToFavorite(MovieEntity movie);

  @Query('DELETE FROM favorite WHERE id = :id')
  Future<void> removeFromFavorite(int id);
}
