abstract class ServiceAuth {
  Future<void> Signin(String email, String password, String name);
  Future<void> Login(String email, String password);
}
