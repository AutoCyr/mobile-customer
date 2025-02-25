import 'package:freezed_annotation/freezed_annotation.dart';

part 'motor_type.freezed.dart';
part 'motor_type.g.dart';

@freezed
class MotorType with _$MotorType {
  const factory MotorType({
    @JsonKey(name: 'type_moteur_id') required int id,
    @JsonKey(name: 'libelle') required String libelle,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _MotorType;

  factory MotorType.fromJson(Map<String, dynamic> json) => _$MotorTypeFromJson(json);
}
