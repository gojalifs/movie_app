import 'package:injectable/injectable.dart';
import 'package:movie_app/features/auth/domain/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class AuthRepositoryImpl extends AuthRepository {
  final SharedPreferences sharedPreferences;

  AuthRepositoryImpl(this.sharedPreferences);

  @override
  Future<bool> doLogin(String username, String password) async {
    String user = 'aldmic';
    String pass = '123abc123';

    await Future.delayed(const Duration(seconds: 3));

    if (username == user && password == pass) {
      sharedPreferences.setBool('isLoggedIn', true);
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> logout() async {
    await sharedPreferences.clear();
  }
}
