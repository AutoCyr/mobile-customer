import 'package:autocyr/data/repositories/customer_repository_impl.dart';

class CustomerUseCase {

  final CustomerRepositoryImpl _customerRepositoryImpl;

  CustomerUseCase(this._customerRepositoryImpl);

  Future getPieces() async {
    return await _customerRepositoryImpl.getPieces();
  }

  Future getTypePieces(Map<String, dynamic> params) async {
    return await _customerRepositoryImpl.getTypePieces(params);
  }

  Future getPiece(String id) async {
    return await _customerRepositoryImpl.getPiece(id);
  }

  Future updateAdresses(Map<String, dynamic> body) async {
    return await _customerRepositoryImpl.updateAdresses(body);
  }
}
