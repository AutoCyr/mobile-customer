import 'package:autocyr/domain/models/commons/auto_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_disponibility.freezed.dart';
part 'auto_disponibility.g.dart';

@freezed
class AutoDisponibility with _$AutoDisponibility {
  const factory AutoDisponibility({
    @JsonKey(name: 'disponibilite_auto_id') required int disponibiliteAutoId,
    @JsonKey(name: 'partenaire_id') required int partenaireId,
    @JsonKey(name: 'detail_piece_id') required int detailPieceId,
    @JsonKey(name: 'type_auto_id') required int typeAutoId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'type_auto') required AutoType typeAuto
  }) = _AutoDisponibility;

  factory AutoDisponibility.fromJson(Map<String, dynamic> json) => _$AutoDisponibilityFromJson(json);
}
