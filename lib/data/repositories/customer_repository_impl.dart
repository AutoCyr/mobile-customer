import 'package:autocyr/data/datasources/customers/customer_datasource_impl.dart';
import 'package:autocyr/domain/repositories/customer_repository.dart';

class CustomerRepositoryImpl extends CustomerRepository {

  final CustomerDataSourceImpl _customerDataSourceImpl;

  CustomerRepositoryImpl(this._customerDataSourceImpl);

  @override
  Future getPieces(Map<String, dynamic> params) async {
    return await _customerDataSourceImpl.getPieces(params);
  }

  @override
  Future getPiece(String id) async {
    return await _customerDataSourceImpl.getPiece(id);
  }

  @override
  Future updateAdresses(Map<String, dynamic> body) async {
    return await _customerDataSourceImpl.updateAdresses(body);
  }

  @override
  Future getTypePieces(Map<String, dynamic> params) async {
    return await _customerDataSourceImpl.getTypePieces(params);
  }

  @override
  Future getSubcategoryPieces(Map<String, dynamic> params) async {
    return await _customerDataSourceImpl.getSubcategoryPieces(params);
  }

  @override
  Future getCommandes(Map<String, dynamic> params) async {
    return await _customerDataSourceImpl.getCommandes(params);
  }

  @override
  Future createCommande(Map<String, dynamic> body) async {
    return await _customerDataSourceImpl.createCommande(body);
  }

  @override
  Future searchShop(Map<String, dynamic> params) async {
    return await _customerDataSourceImpl.searchShop(params);
  }

  @override
  Future getShopPieces(Map<String, dynamic> params) async {
    return await _customerDataSourceImpl.getShopPieces(params);
  }

  @override
  Future createRequest(Map<String, String> body, String filepath, String name) async {
    return await _customerDataSourceImpl.createRequest(body, filepath, name);
  }

  @override
  Future searchRequest(Map<String, dynamic> params) async {
    return await _customerDataSourceImpl.searchRequest(params);
  }

  @override
  Future getRequests(Map<String, dynamic> params) async {
    return await _customerDataSourceImpl.getRequests(params);
  }

  @override
  Future getRequest(Map<String, dynamic> params) async {
    return await _customerDataSourceImpl.getRequest(params);
  }
}