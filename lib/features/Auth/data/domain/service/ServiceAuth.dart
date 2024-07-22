abstract class ServiceAuth {
  Future<void> Signup(String email, String password, String name);
  Future<void> login(String email, String password);
}
