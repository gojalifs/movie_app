import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/utils/responsive.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutUsScreen extends StatelessWidget {
  static const route = '/about';
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${AppLocalizations.of(context)?.aboutUs}'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          SvgPicture.network('https://files.readme.io/29c6fee-blue_short.svg'),
          const SizedBox(height: 32),
          Text(
            'Watch It!',
            style: TextStyle(
              fontSize: responsiveFontSize(context, 30),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '''
Welcome to Watch It! Your go-to mobile app for discovering your next favorite movie. Powered by the TMDB API, Watch It! brings you an endless array of movie recommendations right at your fingertips.

Whether you're in the mood for action, comedy, drama, or horror, Watch It! has you covered. Simply browse through our curated selection of films, explore personalized recommendations, and find the perfect movie for your next movie night.

With Watch It!, discovering new movies has never been easier. Dive into our extensive catalog, explore trending titles, and uncover hidden gems you won't find anywhere else.

Join our community of movie enthusiasts, share your favorite films, and connect with fellow cinephiles. With Watch It!, every movie night is an unforgettable experience.''',
          ),
        ],
      ),
    );
  }
}
