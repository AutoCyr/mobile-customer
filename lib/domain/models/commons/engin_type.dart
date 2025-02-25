import 'package:freezed_annotation/freezed_annotation.dart';

part 'engin_type.freezed.dart';
part 'engin_type.g.dart';

@freezed
class EnginType with _$EnginType {
  const factory EnginType({
    @JsonKey(name: 'type_engin_id') required int id,
    @JsonKey(name: 'libelle') required String libelle,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _EnginType;

  factory EnginType.fromJson(Map<String, dynamic> json) => _$EnginTypeFromJson(json);
}
