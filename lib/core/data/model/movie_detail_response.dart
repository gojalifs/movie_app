import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie_detail_response.freezed.dart';
part 'movie_detail_response.g.dart';

@freezed
class MovieDetailResponse with _$MovieDetailResponse {
  const factory MovieDetailResponse({
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    List<Genre>? genres,
    required int id,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'production_countries')
    List<ProductionCountries>? productionCountries,
    int? runtime,
    String? title,
    @JsonKey(name: 'vote_average') double? rating,
    @JsonKey(name: 'vote_count') double? voteCount,
    @JsonKey(name: 'release_date') String? releaseDate,
  }) = _MovieDetailResponse;

  factory MovieDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailResponseFromJson(json);
}

@freezed
class Genre with _$Genre {
  const factory Genre({
    int? id,
    String? name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@freezed
class ProductionCountries with _$ProductionCountries {
  const factory ProductionCountries({
    @JsonKey(name: 'iso_3166_1') String? isoCode,
    String? name,
  }) = _ProductionCountries;

  factory ProductionCountries.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountriesFromJson(json);
}
