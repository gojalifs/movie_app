import 'package:flutter/material.dart';
import 'package:movie_app/core/data/model/movies_response.dart';
import 'package:movie_app/features/favorite/data/floor/movie_entity.dart';
import 'package:movie_app/features/favorite/domain/favorite_repository.dart';
import 'package:movie_app/utils/converter.dart';

class FavoriteProvider extends ChangeNotifier {
  final FavoriteRepository repository;

  var _state = ConnectionState.none;
  List<Movie> _movies = [];
  bool _isFavorites = true;

  FavoriteProvider({required this.repository});

  ConnectionState get state => _state;
  List<Movie> get movies => _movies;
  bool get isFavorites => _isFavorites;

  bool checkFavorites(String id) {
    _isFavorites = false;
    var movieId = id.replaceAll(RegExp(r':'), '');
    for (var element in _movies) {
      if (element.id == int.parse(movieId)) {
        _isFavorites = true;
        return _isFavorites;
      }
    }
    _isFavorites = false;
    return _isFavorites;
  }

  getFavorites() async {
    _state = ConnectionState.active;
    try {
      var favoritesMovie = await repository.getFavorites();
      _movies = favoritesMovie.map((e) => Converter.entityToMovie(e)).toList();
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    } finally {
      _state = ConnectionState.done;
    }
  }

  addToFavorites(MovieEntity movie) async {
    _state = ConnectionState.active;
    try {
      await repository.addToFavorites(movie);
      _isFavorites = true;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    } finally {
      _state = ConnectionState.done;
    }
  }

  removeFromFavorites(int id) async {
    _state = ConnectionState.active;
    try {
      await repository.removeFromFavorite(id);
      _movies.removeWhere((element) => element.id == id);
      _isFavorites = false;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    } finally {
      _state = ConnectionState.done;
    }
  }
}
