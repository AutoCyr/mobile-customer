import 'package:autocyr/data/repositories/common_repository_impl.dart';

class CommonUseCase {

  final CommonRepositoryImpl _commonRepositoryImpl;

  CommonUseCase(this._commonRepositoryImpl);

  Future getAutoMakes() async {
    return await _commonRepositoryImpl.getAutoMakes();
  }

  Future getBikeMakes() async {
    return await _commonRepositoryImpl.getBikeMakes();
  }

  Future getCountries() async {
    return await _commonRepositoryImpl.getCountries();
  }

  Future getPartnerTypes() async {
    return await _commonRepositoryImpl.getPartnerTypes();
  }

  Future getEnginCategories() async {
    return await _commonRepositoryImpl.getEnginCategories();
  }

  Future getAutoTypes() async {
    return await _commonRepositoryImpl.getAutoTypes();
  }

  Future getEnginTypes() async {
    return await _commonRepositoryImpl.getEnginTypes();
  }

  Future getMoteurTypes() async {
    return await _commonRepositoryImpl.getMoteurTypes();
  }

  Future getCategories() async {
    return await _commonRepositoryImpl.getCategories();
  }

  Future getSubCategories() async {
    return await _commonRepositoryImpl.getSubCategories();
  }

  Future getArticles() async {
    return await _commonRepositoryImpl.getArticles();
  }

  Future getPublicites() async {
    return await _commonRepositoryImpl.getPublicites();
  }
}