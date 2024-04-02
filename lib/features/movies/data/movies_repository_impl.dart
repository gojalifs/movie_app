import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies/data/network/api_call.dart';
import 'package:movie_app/core/data/model/movie_detail_response.dart';

import 'package:movie_app/core/data/model/movies_response.dart';
import 'package:movie_app/features/movies/domain/movies_repository.dart';

@singleton
class MoviesRepositoryImpl extends MoviesRepository {
  final MovieApiCall apiCall;

  MoviesRepositoryImpl({required this.apiCall});

  @override
  Future<MovieResponse> getMovies(int page) async {
    return await apiCall.getMovies(page);
  }

  @override
  Future<MovieDetailResponse> getMovieDetail(int id) async {
    return await apiCall.getMovie(id);
  }
}
