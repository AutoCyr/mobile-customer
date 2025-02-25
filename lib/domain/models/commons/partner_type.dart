import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_type.freezed.dart';
part 'partner_type.g.dart';

@freezed
class PartnerType with _$PartnerType {
  const factory PartnerType({
    @JsonKey(name: 'type_id') required int id,
    @JsonKey(name: 'libelle') required String libelle,
    @JsonKey(name: 'statut') required int status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _PartnerType;

  factory PartnerType.fromJson(Map<String, dynamic> json) => _$PartnerTypeFromJson(json);
}
