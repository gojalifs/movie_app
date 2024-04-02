import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/data/model/movies_response.dart';

@injectable
class SearchApiCall {
  final _baseUrl = 'https://api.themoviedb.org/3';

  final _header = {
    'accept': 'application/json',
    'Authorization': 'Bearer #Your token',
  };

  Future<MovieResponse> searchMovie(String query, int page) async {
    var url = Uri.parse(
      '$_baseUrl/search/movie?query=$query&include_adult=false&language=en-US&page=$page',
    );

    var response = await http.get(headers: _header, url);

    var data = jsonDecode(response.body);

    var result = MovieResponse.fromJson(data);
    return result;
  }
}
