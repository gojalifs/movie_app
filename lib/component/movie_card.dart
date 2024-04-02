import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/data/model/movies_response.dart';
import 'package:movie_app/features/movies/presentation/movie_detail_screen.dart';
import 'package:movie_app/utils/responsive.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('${MovieDetailScreen.route}:${movie.id}');
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Image.network(
                'http://image.tmdb.org/t/p/w185/${movie.posterPath}',
                fit: BoxFit.cover,
                width: double.infinity,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress?.cumulativeBytesLoaded !=
                      loadingProgress?.expectedTotalBytes) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return child;
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(
                      Icons.broken_image_rounded,
                      size: 128,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${movie.title}',
                    style: TextStyle(
                      fontSize: responsiveFontSize(context, 24),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        size: responsiveFontSize(context, 20),
                        color: Colors.amber,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${movie.voteAverage}',
                        style: TextStyle(
                          fontSize: responsiveFontSize(context, 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
