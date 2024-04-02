import 'package:movie_app/core/data/model/movies_response.dart';

abstract class SearchRepository {
  Future<MovieResponse> searchMovie(String query, int page);
}
