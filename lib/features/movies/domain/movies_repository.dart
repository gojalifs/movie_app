import 'package:movie_app/core/data/model/movie_detail_response.dart';
import 'package:movie_app/core/data/model/movies_response.dart';

abstract class MoviesRepository {
  Future<MovieResponse> getMovies(int page);
  Future<MovieDetailResponse> getMovieDetail(int id);
}
