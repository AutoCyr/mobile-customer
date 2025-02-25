import 'package:autocyr/domain/models/commons/engin_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_disponibility.freezed.dart';
part 'category_disponibility.g.dart';

@freezed
class CategoryDisponibility with _$CategoryDisponibility {
  const factory CategoryDisponibility({
    @JsonKey(name: 'disponibilite_engin_id') required int disponibiliteEnginId,
    @JsonKey(name: 'partenaire_id') required int partenaireId,
    @JsonKey(name: 'detail_piece_id') required int detailPieceId,
    @JsonKey(name: 'categorie_engin_id') required int categorieEnginId,
    @JsonKey(name: 'hybride') required int hybride,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'categorie_engin') required EnginCategory categorieEngin
  }) = _CategoryDisponibility;

  factory CategoryDisponibility.fromJson(Map<String, dynamic> json) => _$CategoryDisponibilityFromJson(json);
}
