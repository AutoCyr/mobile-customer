import 'package:autocyr/domain/models/abstractables/selectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category implements Selectable {
  const factory Category({
    @JsonKey(name: 'category_id') required int id,
    @JsonKey(name: 'libelle') required String name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}