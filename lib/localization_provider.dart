import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationProvider extends ChangeNotifier {
  final SharedPreferences sharedPreferences;

  LocalizationProvider({required this.sharedPreferences});

  String? _locale;
  String? get locale => _locale;

  String? getLocale() {
    var currentLocale = sharedPreferences.getString('locale');
    if (currentLocale != null) {
      _locale = currentLocale;
    }

    return locale;
  }

  setLocale(String newLocale) {
    sharedPreferences.setString('locale', newLocale);
    _locale = newLocale;
    notifyListeners();
  }
}
