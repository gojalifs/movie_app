import 'package:floor/floor.dart';

@Entity(tableName: 'favorite')
class MovieEntity {
  @primaryKey
  final int id;
  final String? title;
  final String? posterPath;
  final double? voteAverage;

  MovieEntity(this.id, this.title, this.posterPath, this.voteAverage);
}
