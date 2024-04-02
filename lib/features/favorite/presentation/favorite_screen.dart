import 'package:flutter/material.dart';
import 'package:movie_app/component/movie_card.dart';
import 'package:movie_app/features/favorite/presentation/favorite_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FavoriteScreen extends StatelessWidget {
  static const route = '/favorite';
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<FavoriteProvider>(context, listen: false).getFavorites();
    return Consumer<FavoriteProvider>(
      builder: (context, favoriteProvider, child) {
        if (favoriteProvider.movies.isEmpty) {
          return Center(
            child: Text(
              '${AppLocalizations.of(context)?.noFavorites}',
            ),
          );
        }
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
          ),
          itemCount: favoriteProvider.movies.length,
          itemBuilder: (BuildContext context, int index) {
            return MovieCard(
              movie: favoriteProvider.movies[index],
            );
          },
        );
      },
    );
  }
}
