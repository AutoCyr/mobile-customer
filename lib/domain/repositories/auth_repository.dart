abstract class AuthRepository {
  Future login(Map<String, dynamic> body);

  Future register(Map<String, dynamic> body);

  Future updateFCMToken(Map<String, dynamic> body);

  Future getProfile();

  Future logout();
}