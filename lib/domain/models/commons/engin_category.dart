import 'package:freezed_annotation/freezed_annotation.dart';

part 'engin_category.freezed.dart';
part 'engin_category.g.dart';

@freezed
class EnginCategory with _$EnginCategory {
  const factory EnginCategory({
    @JsonKey(name: 'categorie_engin_id') required int id,
    @JsonKey(name: 'libelle') required String libelle,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _EnginCategory;

  factory EnginCategory.fromJson(Map<String, dynamic> json) => _$EnginCategoryFromJson(json);
}
