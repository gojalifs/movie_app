import 'package:movie_app/core/data/model/movies_response.dart';
import 'package:movie_app/features/search/data/network/api_call.dart';
import 'package:movie_app/features/search/domain/search_repository.dart';

class SearchRepositoryImpl extends SearchRepository {
  final SearchApiCall apiCall;

  SearchRepositoryImpl({required this.apiCall});

  @override
  Future<MovieResponse> searchMovie(String query, int page) {
    return apiCall.searchMovie(query, page);
  }
}
