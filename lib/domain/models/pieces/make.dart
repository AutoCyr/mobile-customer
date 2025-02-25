import 'package:freezed_annotation/freezed_annotation.dart';

part 'make.freezed.dart';
part 'make.g.dart';

@freezed
class Make with _$Make {
  const factory Make({
    @JsonKey(name: 'marque_id') required int id,
    @JsonKey(name: 'libelle_marque') required String name,
    @JsonKey(name: 'type_marque') required int typeMarque,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Make;

  factory Make.fromJson(Map<String, dynamic> json) => _$MakeFromJson(json);
}
