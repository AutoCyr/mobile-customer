import 'package:autocyr/domain/models/abstractables/selectable.dart';
import 'package:autocyr/domain/models/core/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory.freezed.dart';
part 'subcategory.g.dart';

@freezed
class Subcategory with _$Subcategory implements Selectable {
  const factory Subcategory({
    @JsonKey(name: 'subcategory_id') required int id,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'libelle') required String name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'category') Category? category,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) => _$SubcategoryFromJson(json);
}
