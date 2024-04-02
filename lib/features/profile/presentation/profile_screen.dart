import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/features/about_us/presentation/abous_us_screen.dart';
import 'package:movie_app/features/auth/presentation/auth_provider.dart';
import 'package:movie_app/features/auth/presentation/login_screen.dart';
import 'package:movie_app/localization_provider.dart';
import 'package:movie_app/utils/responsive.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:restart_app/restart_app.dart';

// DropdownMenuEntry labels and values for the first dropdown menu.
enum Language {
  english('English', 'en'),
  bahasa('Bahasa Indonesia', 'id');

  const Language(this.label, this.locale);
  final String label;
  final String locale;
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 250,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/60059041?v=4',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              'Fajar Sidik Prasetio',
              style: TextStyle(
                  fontSize: responsiveFontSize(context, 30),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        const ListTile(
          title: Text('Email'),
          trailing: Text('fajarsidikprasetio@gmail.com'),
        ),
        const ListTile(
          title: Text('Github'),
          trailing: Text('https://github.com/gojalifs'),
        ),
        ListTile(
          title: Text('${AppLocalizations.of(context)?.gender}'),
          trailing: const Text('Male'),
        ),
        ListTile(
          title: Text('${AppLocalizations.of(context)?.city}'),
          trailing: const Text('Bekasi Regency'),
        ),
        ListTile(
          title: Text('${AppLocalizations.of(context)?.selectLang}'),
          trailing: Consumer<LocalizationProvider>(
            builder: (context, localeProvider, child) => DropdownMenu(
              initialSelection: localeProvider.getLocale(),
              dropdownMenuEntries: Language.values
                  .map(
                    (e) => DropdownMenuEntry(value: e.locale, label: e.label),
                  )
                  .toList(),
              onSelected: (value) {
                if (value != null) {
                  localeProvider.setLocale(value);
                  Restart.restartApp();
                }
              },
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(),
        ),
        ListTile(
          title: Text('${AppLocalizations.of(context)?.aboutApp}'),
          trailing: const Icon(Icons.navigate_next_rounded),
          onTap: () {
            context.push(AboutUsScreen.route);
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton(
            onPressed: () {
              Provider.of<AuthProvider>(context, listen: false).logout();
              context.go(LoginScreen.route);
            },
            child: Text('${AppLocalizations.of(context)?.logout}'),
          ),
        ),
      ],
    );
  }
}
