import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitialProvider extends ChangeNotifier {
  Future<bool> checkSession() async {
    await Future.delayed(const Duration(seconds: 3));

    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getBool('isLoggedIn');
    if (token != null && token) {
      return true;
    } else {
      return false;
    }
  }
}
