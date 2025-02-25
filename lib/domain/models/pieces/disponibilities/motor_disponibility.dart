import 'package:autocyr/domain/models/commons/motor_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'motor_disponibility.freezed.dart';
part 'motor_disponibility.g.dart';

@freezed
class MotorDisponibility with _$MotorDisponibility {
  const factory MotorDisponibility({
    @JsonKey(name: 'disponibilite_moteur_id') required int disponibiliteMoteurId,
    @JsonKey(name: 'partenaire_id') required int partenaireId,
    @JsonKey(name: 'detail_piece_id') required int detailPieceId,
    @JsonKey(name: 'type_moteur_id') required int typeMoteurId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'type_moteur') required MotorType typeMoteur
  }) = _MotorDisponibility;

  factory MotorDisponibility.fromJson(Map<String, dynamic> json) => _$MotorDisponibilityFromJson(json);
}
