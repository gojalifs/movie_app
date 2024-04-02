import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/features/auth/domain/auth_repository.dart';
import 'package:movie_app/features/auth/presentation/auth_provider.dart';
import 'package:movie_app/features/favorite/domain/favorite_repository.dart';
import 'package:movie_app/features/favorite/presentation/favorite_provider.dart';
import 'package:movie_app/features/initial/presentation/initial_provider.dart';
import 'package:movie_app/features/movies/domain/movies_repository.dart';
import 'package:movie_app/features/movies/presentation/movies_provider.dart';
import 'package:movie_app/features/search/data/network/api_call.dart';
import 'package:movie_app/features/search/presentation/search_provider.dart';
import 'package:movie_app/injector/injector.dart';
import 'package:movie_app/localization_provider.dart';
import 'package:movie_app/router/routes.dart';
import 'package:movie_app/theme/color_schemes.g.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => InitialProvider()),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(
            authRepository: getIt<AuthRepository>(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => MoviesProvider(
            repository: getIt<MoviesRepository>(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoriteProvider(
            repository: getIt<FavoriteRepository>(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => SearchProvider(apiCall: getIt<SearchApiCall>()),
        ),
        ChangeNotifierProvider(
          create: (context) => LocalizationProvider(
            sharedPreferences: getIt<SharedPreferences>(),
          ),
        ),
      ],
      child: Consumer<LocalizationProvider>(
        builder: (context, value, child) => MaterialApp.router(
          title: 'Watch It!',
          theme: _buildTheme(Brightness.light, lightColorScheme),
          darkTheme: _buildTheme(Brightness.dark, darkColorScheme),
          routerConfig: router,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeResolutionCallback: (locales, supportedLocales) {
            var localeCode = value.getLocale();
            if (localeCode != null) {
              return Locale('${value.locale}');
            }

            return locales;
          },
        ),
      ),
    );
  }

  ThemeData _buildTheme(Brightness brightness, ColorScheme colorScheme) {
    var baseTheme = ThemeData(brightness: brightness, colorScheme: colorScheme);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.montserratTextTheme(baseTheme.textTheme),
    );
  }
}
