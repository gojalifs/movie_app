// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetailResponse _$MovieDetailResponseFromJson(Map<String, dynamic> json) {
  return _MovieDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailResponse {
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  List<Genre>? get genres => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_countries')
  List<ProductionCountries>? get productionCountries =>
      throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  double? get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailResponseCopyWith<MovieDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailResponseCopyWith<$Res> {
  factory $MovieDetailResponseCopyWith(
          MovieDetailResponse value, $Res Function(MovieDetailResponse) then) =
      _$MovieDetailResponseCopyWithImpl<$Res, MovieDetailResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      List<Genre>? genres,
      int id,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'production_countries')
      List<ProductionCountries>? productionCountries,
      int? runtime,
      String? title,
      @JsonKey(name: 'vote_average') double? rating,
      @JsonKey(name: 'vote_count') double? voteCount,
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class _$MovieDetailResponseCopyWithImpl<$Res, $Val extends MovieDetailResponse>
    implements $MovieDetailResponseCopyWith<$Res> {
  _$MovieDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? genres = freezed,
    Object? id = null,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? productionCountries = freezed,
    Object? runtime = freezed,
    Object? title = freezed,
    Object? rating = freezed,
    Object? voteCount = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCountries: freezed == productionCountries
          ? _value.productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountries>?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailResponseImplCopyWith<$Res>
    implements $MovieDetailResponseCopyWith<$Res> {
  factory _$$MovieDetailResponseImplCopyWith(_$MovieDetailResponseImpl value,
          $Res Function(_$MovieDetailResponseImpl) then) =
      __$$MovieDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      List<Genre>? genres,
      int id,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'production_countries')
      List<ProductionCountries>? productionCountries,
      int? runtime,
      String? title,
      @JsonKey(name: 'vote_average') double? rating,
      @JsonKey(name: 'vote_count') double? voteCount,
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class __$$MovieDetailResponseImplCopyWithImpl<$Res>
    extends _$MovieDetailResponseCopyWithImpl<$Res, _$MovieDetailResponseImpl>
    implements _$$MovieDetailResponseImplCopyWith<$Res> {
  __$$MovieDetailResponseImplCopyWithImpl(_$MovieDetailResponseImpl _value,
      $Res Function(_$MovieDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? genres = freezed,
    Object? id = null,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? productionCountries = freezed,
    Object? runtime = freezed,
    Object? title = freezed,
    Object? rating = freezed,
    Object? voteCount = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$MovieDetailResponseImpl(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCountries: freezed == productionCountries
          ? _value._productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountries>?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailResponseImpl
    with DiagnosticableTreeMixin
    implements _MovieDetailResponse {
  const _$MovieDetailResponseImpl(
      {@JsonKey(name: 'backdrop_path') this.backdropPath,
      final List<Genre>? genres,
      required this.id,
      this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'production_countries')
      final List<ProductionCountries>? productionCountries,
      this.runtime,
      this.title,
      @JsonKey(name: 'vote_average') this.rating,
      @JsonKey(name: 'vote_count') this.voteCount,
      @JsonKey(name: 'release_date') this.releaseDate})
      : _genres = genres,
        _productionCountries = productionCountries;

  factory _$MovieDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailResponseImplFromJson(json);

  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final List<Genre>? _genres;
  @override
  List<Genre>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int id;
  @override
  final String? overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  final List<ProductionCountries>? _productionCountries;
  @override
  @JsonKey(name: 'production_countries')
  List<ProductionCountries>? get productionCountries {
    final value = _productionCountries;
    if (value == null) return null;
    if (_productionCountries is EqualUnmodifiableListView)
      return _productionCountries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? runtime;
  @override
  final String? title;
  @override
  @JsonKey(name: 'vote_average')
  final double? rating;
  @override
  @JsonKey(name: 'vote_count')
  final double? voteCount;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieDetailResponse(backdropPath: $backdropPath, genres: $genres, id: $id, overview: $overview, posterPath: $posterPath, productionCountries: $productionCountries, runtime: $runtime, title: $title, rating: $rating, voteCount: $voteCount, releaseDate: $releaseDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieDetailResponse'))
      ..add(DiagnosticsProperty('backdropPath', backdropPath))
      ..add(DiagnosticsProperty('genres', genres))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('overview', overview))
      ..add(DiagnosticsProperty('posterPath', posterPath))
      ..add(DiagnosticsProperty('productionCountries', productionCountries))
      ..add(DiagnosticsProperty('runtime', runtime))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('voteCount', voteCount))
      ..add(DiagnosticsProperty('releaseDate', releaseDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailResponseImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            const DeepCollectionEquality()
                .equals(other._productionCountries, _productionCountries) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backdropPath,
      const DeepCollectionEquality().hash(_genres),
      id,
      overview,
      posterPath,
      const DeepCollectionEquality().hash(_productionCountries),
      runtime,
      title,
      rating,
      voteCount,
      releaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailResponseImplCopyWith<_$MovieDetailResponseImpl> get copyWith =>
      __$$MovieDetailResponseImplCopyWithImpl<_$MovieDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailResponse implements MovieDetailResponse {
  const factory _MovieDetailResponse(
          {@JsonKey(name: 'backdrop_path') final String? backdropPath,
          final List<Genre>? genres,
          required final int id,
          final String? overview,
          @JsonKey(name: 'poster_path') final String? posterPath,
          @JsonKey(name: 'production_countries')
          final List<ProductionCountries>? productionCountries,
          final int? runtime,
          final String? title,
          @JsonKey(name: 'vote_average') final double? rating,
          @JsonKey(name: 'vote_count') final double? voteCount,
          @JsonKey(name: 'release_date') final String? releaseDate}) =
      _$MovieDetailResponseImpl;

  factory _MovieDetailResponse.fromJson(Map<String, dynamic> json) =
      _$MovieDetailResponseImpl.fromJson;

  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  List<Genre>? get genres;
  @override
  int get id;
  @override
  String? get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'production_countries')
  List<ProductionCountries>? get productionCountries;
  @override
  int? get runtime;
  @override
  String? get title;
  @override
  @JsonKey(name: 'vote_average')
  double? get rating;
  @override
  @JsonKey(name: 'vote_count')
  double? get voteCount;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailResponseImplCopyWith<_$MovieDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
mixin _$Genre {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res, Genre>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res, $Val extends Genre>
    implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreImplCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$$GenreImplCopyWith(
          _$GenreImpl value, $Res Function(_$GenreImpl) then) =
      __$$GenreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$GenreImplCopyWithImpl<$Res>
    extends _$GenreCopyWithImpl<$Res, _$GenreImpl>
    implements _$$GenreImplCopyWith<$Res> {
  __$$GenreImplCopyWithImpl(
      _$GenreImpl _value, $Res Function(_$GenreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$GenreImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreImpl with DiagnosticableTreeMixin implements _Genre {
  const _$GenreImpl({this.id, this.name});

  factory _$GenreImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Genre(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Genre'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      __$$GenreImplCopyWithImpl<_$GenreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreImplToJson(
      this,
    );
  }
}

abstract class _Genre implements Genre {
  const factory _Genre({final int? id, final String? name}) = _$GenreImpl;

  factory _Genre.fromJson(Map<String, dynamic> json) = _$GenreImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductionCountries _$ProductionCountriesFromJson(Map<String, dynamic> json) {
  return _ProductionCountries.fromJson(json);
}

/// @nodoc
mixin _$ProductionCountries {
  @JsonKey(name: 'iso_3166_1')
  String? get isoCode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCountriesCopyWith<ProductionCountries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCountriesCopyWith<$Res> {
  factory $ProductionCountriesCopyWith(
          ProductionCountries value, $Res Function(ProductionCountries) then) =
      _$ProductionCountriesCopyWithImpl<$Res, ProductionCountries>;
  @useResult
  $Res call({@JsonKey(name: 'iso_3166_1') String? isoCode, String? name});
}

/// @nodoc
class _$ProductionCountriesCopyWithImpl<$Res, $Val extends ProductionCountries>
    implements $ProductionCountriesCopyWith<$Res> {
  _$ProductionCountriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isoCode = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCountriesImplCopyWith<$Res>
    implements $ProductionCountriesCopyWith<$Res> {
  factory _$$ProductionCountriesImplCopyWith(_$ProductionCountriesImpl value,
          $Res Function(_$ProductionCountriesImpl) then) =
      __$$ProductionCountriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'iso_3166_1') String? isoCode, String? name});
}

/// @nodoc
class __$$ProductionCountriesImplCopyWithImpl<$Res>
    extends _$ProductionCountriesCopyWithImpl<$Res, _$ProductionCountriesImpl>
    implements _$$ProductionCountriesImplCopyWith<$Res> {
  __$$ProductionCountriesImplCopyWithImpl(_$ProductionCountriesImpl _value,
      $Res Function(_$ProductionCountriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isoCode = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ProductionCountriesImpl(
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCountriesImpl
    with DiagnosticableTreeMixin
    implements _ProductionCountries {
  const _$ProductionCountriesImpl(
      {@JsonKey(name: 'iso_3166_1') this.isoCode, this.name});

  factory _$ProductionCountriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCountriesImplFromJson(json);

  @override
  @JsonKey(name: 'iso_3166_1')
  final String? isoCode;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductionCountries(isoCode: $isoCode, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductionCountries'))
      ..add(DiagnosticsProperty('isoCode', isoCode))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCountriesImpl &&
            (identical(other.isoCode, isoCode) || other.isoCode == isoCode) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isoCode, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCountriesImplCopyWith<_$ProductionCountriesImpl> get copyWith =>
      __$$ProductionCountriesImplCopyWithImpl<_$ProductionCountriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCountriesImplToJson(
      this,
    );
  }
}

abstract class _ProductionCountries implements ProductionCountries {
  const factory _ProductionCountries(
      {@JsonKey(name: 'iso_3166_1') final String? isoCode,
      final String? name}) = _$ProductionCountriesImpl;

  factory _ProductionCountries.fromJson(Map<String, dynamic> json) =
      _$ProductionCountriesImpl.fromJson;

  @override
  @JsonKey(name: 'iso_3166_1')
  String? get isoCode;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ProductionCountriesImplCopyWith<_$ProductionCountriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
