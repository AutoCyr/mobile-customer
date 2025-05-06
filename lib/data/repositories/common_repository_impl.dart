import 'package:autocyr/data/datasources/commons/common_datasource_impl.dart';
import 'package:autocyr/domain/repositories/common_repository.dart';

class CommonRepositoryImpl extends CommonRepository {

  final CommonDataSourceImpl _commonDataSourceImpl;

  CommonRepositoryImpl(this._commonDataSourceImpl);

  @override
  Future getCountries() async {
    return await _commonDataSourceImpl.getCountries();
  }

  @override
  Future getAutoMakes() async {
    return await _commonDataSourceImpl.getAutoMakes();
  }

  @override
  Future getBikeMakes() async {
    return await _commonDataSourceImpl.getBikeMakes();
  }

  @override
  Future getPartnerTypes() async {
    return await _commonDataSourceImpl.getPartnerTypes();
  }

  @override
  Future getAutoTypes() async {
    return await _commonDataSourceImpl.getAutoTypes();
  }

  @override
  Future getEnginCategories() async {
    return await _commonDataSourceImpl.getEnginCategories();
  }

  @override
  Future getEnginTypes() async {
    return await _commonDataSourceImpl.getEnginTypes();
  }

  @override
  Future getMoteurTypes() async {
    return await _commonDataSourceImpl.getMoteurTypes();
  }

  @override
  Future getArticles() async {
    return await _commonDataSourceImpl.getArticles();
  }

  @override
  Future getCategories() async {
    return await _commonDataSourceImpl.getCategories();
  }

  @override
  Future getSubCategories() async {
    return await _commonDataSourceImpl.getSubCategories();
  }

  @override
  Future getPublicites() async {
    return await _commonDataSourceImpl.getPublicites();
  }

}