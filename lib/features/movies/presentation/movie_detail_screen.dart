import 'package:flutter/material.dart';
import 'package:movie_app/features/favorite/data/floor/movie_entity.dart';
import 'package:movie_app/features/favorite/presentation/favorite_provider.dart';
import 'package:movie_app/core/data/model/movie_detail_response.dart';
import 'package:movie_app/features/movies/presentation/movies_provider.dart';
import 'package:movie_app/utils/extensions.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MovieDetailScreen extends StatelessWidget {
  static const route = '/movie-detail';

  final String movieId;

  const MovieDetailScreen({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<MoviesProvider>(context, listen: false).getMovieDetail(movieId);
    Provider.of<FavoriteProvider>(context, listen: false)
        .checkFavorites(movieId);
    return Scaffold(
      floatingActionButton: const FabSection(),
      body: SafeArea(
        child: Consumer<MoviesProvider>(
          builder: (context, movieProvider, child) {
            var movie = movieProvider.movie;
            if (movieProvider.state == ConnectionState.active) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView(
              children: [
                Image.network(
                  'http://image.tmdb.org/t/p/original/${movieProvider.movie?.posterPath}',
                  height: MediaQuery.of(context).size.height / 2,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress?.cumulativeBytesLoaded !=
                        loadingProgress?.expectedTotalBytes) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return child;
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.broken_image_rounded,
                      size: 64,
                      color: Colors.grey,
                    );
                  },
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: MovieDetailSection(movie: movie),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class FabSection extends StatelessWidget {
  const FabSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer2<FavoriteProvider, MoviesProvider>(
      builder: (context, favoriteProvider, moviesProvider, child) {
        if (moviesProvider.state != ConnectionState.active) {
          var movie = moviesProvider.movie;
          var movieEntity = MovieEntity(
            movie!.id,
            movie.title,
            movie.posterPath,
            movie.rating,
          );
          return FloatingActionButton(
            onPressed: () {
              if (favoriteProvider.isFavorites) {
                favoriteProvider.removeFromFavorites(movieEntity.id);
              } else {
                favoriteProvider.addToFavorites(movieEntity);
              }
            },
            child: favoriteProvider.isFavorites
                ? const Icon(Icons.favorite_rounded)
                : const Icon(Icons.favorite_border_rounded),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

class MovieDetailSection extends StatelessWidget {
  const MovieDetailSection({
    super.key,
    required this.movie,
  });

  final MovieDetailResponse? movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              flex: 2,
              child: Text(
                '${movie?.title}',
                style: const TextStyle(fontSize: 30),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              flex: 1,
              child: Text(
                '${movie?.releaseDate?.year} | ${movie?.runtime} min',
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Builder(
          builder: (context) {
            var countries = movie?.productionCountries!
                .map((e) => e.name)
                .toList()
                .join(', ');
            return Text(
              "${AppLocalizations.of(context)?.country} : $countries",
            );
          },
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(
              Icons.star_rounded,
              size: 18,
              color: Colors.amber,
            ),
            Text('${movie?.rating} / 10'),
            const SizedBox(width: 5),
            Text('from ${movie?.voteCount?.round()} Total Vote'),
          ],
        ),
        const SizedBox(height: 8),
        Builder(
          builder: (context) {
            var genres = movie?.genres!.map((e) => e.name).toList().join(', ');
            return Text('${AppLocalizations.of(context)?.genre} : $genres');
          },
        ),
        const Divider(),
        Text(
          '${AppLocalizations.of(context)?.prolog}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text('${movie?.overview}'),
        ),
      ],
    );
  }
}
