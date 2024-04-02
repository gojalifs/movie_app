import 'package:flutter/material.dart';
import 'package:movie_app/core/data/model/movies_response.dart';
import 'package:movie_app/features/search/data/network/api_call.dart';

class SearchProvider extends ChangeNotifier {
  final SearchApiCall apiCall;

  SearchProvider({required this.apiCall});

  var _state = ConnectionState.none;
  List<Movie> _movies = [];
  int _page = 1;

  ConnectionState get state => _state;
  List<Movie> get movies => _movies;
  int get page => _page;

  searchMovie(String query) async {
    _state = ConnectionState.active;

    notifyListeners();

    try {
      var movieResponse = await apiCall.searchMovie(query, 1);
      _movies = [...movieResponse.results ?? []];
      if (movieResponse.results != null) {
        _page++;
      }
    } on Exception catch (e) {
      debugPrint('$e');
    } finally {
      _state = ConnectionState.done;

      notifyListeners();
    }
  }

  getNextPage(String query) async {
    try {
      var movieResponse = await apiCall.searchMovie(query, 1);
      _movies.addAll(movieResponse.results ?? []);
      if (movieResponse.results != null) {
        _page++;
      }
    } on Exception catch (e) {
      debugPrint('$e');
    } finally {
      _state = ConnectionState.done;
      notifyListeners();
    }
  }

  clearMovies() {
    _movies.clear();
    notifyListeners();
  }
}
