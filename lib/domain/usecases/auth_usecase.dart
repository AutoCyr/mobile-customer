import 'package:autocyr/data/repositories/auth_repository_impl.dart';

class AuthUseCase {

  final AuthRepositoryImpl _authRepositoryImpl;

  AuthUseCase(this._authRepositoryImpl);

  Future login(Map<String, dynamic> body) async {
    return await _authRepositoryImpl.login(body);
  }

  Future logout() async {
    return await _authRepositoryImpl.logout();
  }

  Future register(Map<String, dynamic> body) async {
    return await _authRepositoryImpl.register(body);
  }

  Future updateFCMToken(Map<String, dynamic> body) async {
    return await _authRepositoryImpl.updateFCMToken(body);
  }

  Future getProfile() async {
    return await _authRepositoryImpl.getProfile();
  }
}