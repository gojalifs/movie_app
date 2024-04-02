import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/data/model/movie_detail_response.dart';
import 'package:movie_app/core/data/model/movies_response.dart';

@injectable
class MovieApiCall {
  final _baseUrl = 'https://api.themoviedb.org/3';

  final _header = {
    'accept': 'application/json',
    'Authorization': 'Bearer #your token',
  };

  Future<MovieResponse> getMovies(int page) async {
    var url = Uri.parse('$_baseUrl/movie/now_playing?page=$page');

    var response = await http.get(headers: _header, url);

    var data = jsonDecode(response.body);

    var result = MovieResponse.fromJson(data);
    return result;
  }

  Future<MovieDetailResponse> getMovie(int id) async {
    var url = Uri.parse('$_baseUrl/movie/$id');

    try {
      var response = await http.get(url, headers: _header);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return MovieDetailResponse.fromJson(data);
      } else {
        throw 'Failed to get movie info. code ${response.statusCode}';
      }
    } on Exception catch (_) {
      rethrow;
    }
  }
}
