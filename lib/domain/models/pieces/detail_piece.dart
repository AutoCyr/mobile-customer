import 'package:autocyr/domain/models/commons/engin_type.dart';
import 'package:autocyr/domain/models/core/article.dart';
import 'package:autocyr/domain/models/pieces/disponibilities/auto_disponibility.dart';
import 'package:autocyr/domain/models/pieces/disponibilities/category_disponibility.dart';
import 'package:autocyr/domain/models/pieces/disponibilities/motor_disponibility.dart';
import 'package:autocyr/domain/models/pieces/make.dart';
import 'package:autocyr/domain/models/pieces/piece.dart';
import 'package:autocyr/domain/models/profile/partenaire.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_piece.freezed.dart';
part 'detail_piece.g.dart';

@freezed
class DetailPiece with _$DetailPiece {
  const factory DetailPiece({
    @JsonKey(name: 'detail_piece_id') required int detailPieceId,
    @JsonKey(name: 'partenaire_id') required int partenaireId,
    @JsonKey(name: 'piece_id') int? pieceId,
    @JsonKey(name: 'article_id') int? articleId,
    @JsonKey(name: 'type_engin_id') required int typeEnginId,
    @JsonKey(name: 'prix_piece') required int prixPiece,
    @JsonKey(name: 'garantie') required int garantie,
    @JsonKey(name: 'autres') String? autres,
    @JsonKey(name: 'image_piece') required String imagePiece,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'piece') Piece? piece,
    @JsonKey(name: 'article') Article? article,
    @JsonKey(name: 'type_engin') required EnginType typeEngin,
    @JsonKey(name: 'partenaire') required Partenaire partenaire,
    @JsonKey(name: 'autos') List<AutoDisponibility>? autos,
    @JsonKey(name: 'moteurs') List<MotorDisponibility>? moteurs,
    @JsonKey(name: 'categories') List<CategoryDisponibility>? categories,
  }) = _DetailPiece;

  factory DetailPiece.fromJson(Map<String, dynamic> json) => _$DetailPieceFromJson(json);
}
