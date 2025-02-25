import 'package:autocyr/domain/models/pieces/make.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'make_compatibility.freezed.dart';
part 'make_compatibility.g.dart';

@freezed
class MakeCompatibility with _$MakeCompatibility {
  const factory MakeCompatibility({
    @JsonKey(name: 'compatibilite_marque_id') required int compatibiliteMarqueId,
    @JsonKey(name: 'detail_piece_id') required int detailPieceId,
    @JsonKey(name: 'marque_id') required int marqueId,
    @JsonKey(name: 'partenaire_id') required int partenaireId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'marque') required Make marque,
  }) = _MakeCompatibility;

  factory MakeCompatibility.fromJson(Map<String, dynamic> json) => _$MakeCompatibilityFromJson(json);
}
