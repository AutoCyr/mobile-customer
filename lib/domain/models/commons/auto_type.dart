import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_type.freezed.dart';
part 'auto_type.g.dart';

@freezed
class AutoType with _$AutoType {
  const factory AutoType({
    @JsonKey(name: 'type_auto_id') required int id,
    @JsonKey(name: 'libelle') required String libelle,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _AutoType;

  factory AutoType.fromJson(Map<String, dynamic> json) => _$AutoTypeFromJson(json);
}
