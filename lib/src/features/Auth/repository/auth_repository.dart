abstract class AuthRepository {
  Future<bool> isValidCredentials(String email, String password);
}
