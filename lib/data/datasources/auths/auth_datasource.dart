abstract class AuthDataSource {
  Future login(Map<String, dynamic> body);

  Future register(Map<String, dynamic> body);

  Future updateFCMToken(Map<String, dynamic> body);

  Future getProfile();

  Future logout();

  Future sendVerificationCode(Map<String, dynamic> body);

  Future verifyCode(Map<String, dynamic> body);

  Future checkVerificationStatus(Map<String, dynamic> body);
}