import 'package:flutter/material.dart';
import 'package:movie_app/features/favorite/presentation/favorite_screen.dart';
import 'package:movie_app/features/movies/presentation/home_screen.dart';
import 'package:movie_app/features/profile/presentation/profile_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePageNavigator extends StatefulWidget {
  static const route = '/home_app';
  const HomePageNavigator({super.key});

  @override
  State<HomePageNavigator> createState() => _HomePageNavigatorState();
}

class _HomePageNavigatorState extends State<HomePageNavigator> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: setAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_rounded),
            label: AppLocalizations.of(context)?.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite_rounded),
            label: '${AppLocalizations.of(context)?.favorites}',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_rounded),
            label: '${AppLocalizations.of(context)?.account}',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
      ),
      body: setContent(),
    );
  }

  PreferredSizeWidget setAppBar() {
    switch (currentIndex) {
      case 0:
        {
          return const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: HomeAppBar(),
          );
        }
      case 1:
        {
          return PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              title: Text('${AppLocalizations.of(context)?.yourFavs}'),
            ),
          );
        }
      case 2:
        return PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            title: Text('${AppLocalizations.of(context)?.yourAccount}'),
          ),
        );
      default:
        return AppBar(
          title: const Text('Watch it!'),
        );
    }
  }

  Widget setContent() {
    switch (currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const FavoriteScreen();
      case 2:
        return const ProfileScreen();
      default:
        return const Center(
          child: Text('Screen Not Implemented Yet'),
        );
    }
  }
}
