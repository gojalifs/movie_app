import 'package:flutter/material.dart';
import 'package:movie_app/core/data/model/movie_detail_response.dart';
import 'package:movie_app/core/data/model/movies_response.dart';
import 'package:movie_app/features/movies/domain/movies_repository.dart';

class MoviesProvider extends ChangeNotifier {
  final MoviesRepository repository;

  MoviesProvider({
    required this.repository,
  });

  var _state = ConnectionState.none;
  MovieResponse? _movies;
  MovieDetailResponse? _movie;

  final List<Movie> _movieList = [];
  List<Movie> get movieList => _movieList;
  int _page = 1;
  int get page => _page;

  ConnectionState get state => _state;
  MovieResponse? get movies => _movies;
  MovieDetailResponse? get movie => _movie;

  getMovies() async {
    _state = ConnectionState.active;
    try {
      _movies = await repository.getMovies(page);
      if (_movies != null) {
        _movieList.addAll(_movies?.results ?? []);
      }
      _page++;
    } on Exception catch (e) {
      debugPrint(e.toString());
    } finally {
      _state = ConnectionState.done;
      notifyListeners();
    }
  }

  getMovieDetail(String id) async {
    _state = ConnectionState.active;
    try {
      var movieId = id.replaceAll(RegExp(r':'), '');
      _movie = await repository.getMovieDetail(int.parse(movieId));
    } on Exception catch (e) {
      debugPrint(e.toString());
    } finally {
      _state = ConnectionState.done;
      notifyListeners();
    }
  }

  int getItemCount() {
    return _movieList.length + (_state == ConnectionState.active ? 1 : 0);
  }
}
