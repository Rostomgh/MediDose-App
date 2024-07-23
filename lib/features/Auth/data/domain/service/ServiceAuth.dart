abstract class ServiceAuth {
  Future<void> Signup(String email, String password, String username,);
  Future<void> login(String email, String password);
}
