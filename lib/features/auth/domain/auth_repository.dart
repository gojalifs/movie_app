abstract class AuthRepository {
  Future<bool> doLogin(String username, String password);
  Future<void> logout();
}
