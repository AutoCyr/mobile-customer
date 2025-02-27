import 'package:autocyr/domain/models/pieces/detail_piece.dart';
import 'package:autocyr/domain/models/profile/client.dart';
import 'package:autocyr/domain/models/profile/partenaire.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'commande.freezed.dart';
part 'commande.g.dart';

@freezed
class Commande with _$Commande {
  const factory Commande({
    @JsonKey(name: 'commande_id') required int commandeId,
    @JsonKey(name: 'detail_piece_id') required int detailPieceId,
    @JsonKey(name: 'client_id') required int clientId,
    @JsonKey(name: 'partenaire_id') required int partenaireId,
    @JsonKey(name: 'date_commande') required DateTime dateCommande,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'partenaire') required Partenaire partenaire,
    @JsonKey(name: 'client') required Client client,
    @JsonKey(name: 'piece_detail') required DetailPiece pieceDetail,
  }) = _Commande;

  factory Commande.fromJson(Map<String, dynamic> json) => _$CommandeFromJson(json);
}
