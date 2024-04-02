import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/component/movie_card.dart';
import 'package:movie_app/features/search/presentation/search_screen.dart';
import 'package:provider/provider.dart';

import 'package:movie_app/features/movies/presentation/movies_provider.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    Provider.of<MoviesProvider>(context, listen: false).getMovies();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    // Don't Forget to Dispose the Listener
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() async {
    if (!context.mounted) return;
    final provider = context.read<MoviesProvider>();

    // Check if the scroll position is at the Bottom
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      provider.getMovies();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesProvider>(
      builder: (context, moviesProvider, child) {
        var movies = moviesProvider.movieList;
        if (moviesProvider.state == ConnectionState.active) {
          return const Center(
            child: SizedBox(
              height: 40,
              width: 40,
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (movies.isEmpty) {
          return const Center(
            child: Text('No Data'),
          );
        }
        return GridView.builder(
          controller: _scrollController,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          itemCount: moviesProvider.getItemCount(),
          itemBuilder: (BuildContext context, int index) {
            return MovieCard(movie: movies[index]);
          },
        );
      },
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Watch It!'),
      actions: [
        IconButton(
          onPressed: () {
            context.push(SearchScreen.route);
          },
          icon: const Icon(Icons.search_rounded),
        ),
      ],
    );
  }
}
