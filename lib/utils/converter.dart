import 'package:movie_app/features/favorite/data/floor/movie_entity.dart';
import 'package:movie_app/core/data/model/movies_response.dart';

class Converter {
  static Movie entityToMovie(MovieEntity movieEntity) {
    return Movie(
      id: movieEntity.id,
      title: movieEntity.title ?? '',
      posterPath: movieEntity.posterPath ?? '',
      voteAverage: movieEntity.voteAverage ?? 0,
    );
  }
}
