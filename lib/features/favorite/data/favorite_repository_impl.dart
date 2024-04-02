import 'package:injectable/injectable.dart';
import 'package:movie_app/features/favorite/data/floor/movie_database.dart';
import 'package:movie_app/features/favorite/data/floor/movie_entity.dart';
import 'package:movie_app/features/favorite/domain/favorite_repository.dart';

@injectable
class FavoriteRepositoryImpl extends FavoriteRepository {
  final AppDatabase db;

  FavoriteRepositoryImpl({required this.db});

  @override
  Future<void> addToFavorites(MovieEntity movie) async {
    await db.favoriteDao.addToFavorite(movie);
  }

  @override
  Future<List<MovieEntity>> getFavorites() async {
    return await db.favoriteDao.getFavorites();
  }

  @override
  Future<void> removeFromFavorite(int id) async {
    return await db.favoriteDao.removeFromFavorite(id);
  }
}
