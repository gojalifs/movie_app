// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailResponseImpl _$$MovieDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailResponseImpl(
      backdropPath: json['backdrop_path'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      productionCountries: (json['production_countries'] as List<dynamic>?)
          ?.map((e) => ProductionCountries.fromJson(e as Map<String, dynamic>))
          .toList(),
      runtime: json['runtime'] as int?,
      title: json['title'] as String?,
      rating: (json['vote_average'] as num?)?.toDouble(),
      voteCount: (json['vote_count'] as num?)?.toDouble(),
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$$MovieDetailResponseImplToJson(
        _$MovieDetailResponseImpl instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'genres': instance.genres,
      'id': instance.id,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'production_countries': instance.productionCountries,
      'runtime': instance.runtime,
      'title': instance.title,
      'vote_average': instance.rating,
      'vote_count': instance.voteCount,
      'release_date': instance.releaseDate,
    };

_$GenreImpl _$$GenreImplFromJson(Map<String, dynamic> json) => _$GenreImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$GenreImplToJson(_$GenreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ProductionCountriesImpl _$$ProductionCountriesImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionCountriesImpl(
      isoCode: json['iso_3166_1'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ProductionCountriesImplToJson(
        _$ProductionCountriesImpl instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.isoCode,
      'name': instance.name,
    };
