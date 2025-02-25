abstract class CustomerRepository {
  Future getPieces();

  Future getTypePieces(Map<String, dynamic> params);

  Future getPiece(String id);

  Future updateAdresses(Map<String, dynamic> body);
}