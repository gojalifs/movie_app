import 'dart:async';
import 'package:floor/floor.dart';
import 'package:movie_app/features/favorite/data/floor/favorite_dao.dart';
import 'package:movie_app/features/favorite/data/floor/movie_entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'movie_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [MovieEntity])
abstract class AppDatabase extends FloorDatabase {
  FavoriteDao get favoriteDao;
}
