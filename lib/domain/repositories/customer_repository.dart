abstract class CustomerRepository {
  Future getPieces(Map<String, dynamic> params);

  Future getTypePieces(Map<String, dynamic> params);

  Future getSubcategoryPieces(Map<String, dynamic> params);

  Future getPiece(String id);

  Future updateAdresses(Map<String, dynamic> body);

  Future getCommandes(Map<String, dynamic> params);

  Future createCommande(Map<String, dynamic> body);

  Future searchShop(Map<String, dynamic> params);
}