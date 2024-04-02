import 'package:flutter/material.dart';
import 'package:movie_app/features/auth/domain/auth_repository.dart';

class AuthProvider extends ChangeNotifier {
  final AuthRepository authRepository;

  AuthProvider({required this.authRepository});

  var _state = ConnectionState.none;
  ConnectionState get state => _state;

  Future<bool> doLogin(String username, String password) async {
    _state = ConnectionState.active;
    notifyListeners();
    var result = await authRepository.doLogin(username, password);
    _state = ConnectionState.done;
    notifyListeners();
    return result;
  }

  logout() async {
    await authRepository.logout();
  }
}
