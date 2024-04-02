import 'package:flutter/material.dart';
import 'package:movie_app/core/data/model/movies_response.dart';
import 'package:movie_app/features/movies/presentation/movie_detail_screen.dart';
import 'package:movie_app/utils/extensions.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/features/search/presentation/search_provider.dart';
import 'package:movie_app/utils/debouncer.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchScreen extends StatefulWidget {
  static const route = '/search';
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final ScrollController _scrollController = ScrollController();
  final queryController = TextEditingController();
  final debouncer = Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    if (!context.mounted) return;
    final provider = context.read<SearchProvider>();

    // Check if the scroll position is at the Bottom
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      provider.getNextPage(queryController.text);
    }
  }

  @override
  void dispose() {
    // Don't Forget to Dispose the Listener
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          Provider.of<SearchProvider>(context, listen: false).clearMovies();
          context.pop();
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              controller: _scrollController,
              children: [
                SearchBar(
                  controller: queryController,
                  hintText: '${AppLocalizations.of(context)?.typeSomething}',
                  autoFocus: true,
                  onChanged: (value) {
                    debouncer.run(() {
                      Provider.of<SearchProvider>(context, listen: false)
                          .searchMovie(queryController.text.trim());
                    });
                  },
                  trailing: [
                    IconButton(
                      onPressed: () {
                        if (queryController.text.isNotEmpty) {
                          queryController.text = '';
                          Provider.of<SearchProvider>(context, listen: false)
                              .clearMovies();
                        } else {
                          context.pop();
                        }
                      },
                      icon: const Icon(Icons.close_rounded),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Consumer<SearchProvider>(
                    builder: (context, value, child) {
                      if (value.state == ConnectionState.active) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (value.movies.isEmpty) {
                        return Center(
                          child:
                              Text('${AppLocalizations.of(context)?.noMovie}'),
                        );
                      }
                      return ListView.builder(
                        itemCount: value.movies.length,
                        primary: false,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var movie = value.movies[index];
                          return InkWell(
                            onTap: () {
                              context.push(
                                '${MovieDetailScreen.route}:${movie.id}',
                              );
                            },
                            child: MovieSearchCard(movie: movie),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MovieSearchCard extends StatelessWidget {
  const MovieSearchCard({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'http://image.tmdb.org/t/p/w185/${movie.posterPath}',
              width: 64,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress?.cumulativeBytesLoaded !=
                    loadingProgress?.expectedTotalBytes) {
                  return const CircularProgressIndicator();
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
            const SizedBox(width: 8),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${movie.title}',
                    style: const TextStyle(fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text('${movie.releaseDate?.year}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
