import 'package:autocyr/domain/models/abstractables/selectable.dart';
import 'package:autocyr/domain/models/core/subcategory.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article implements Selectable {
  const factory Article({
    @JsonKey(name: 'article_id') required int id,
    @JsonKey(name: 'subcategory_id') required int subcategoryId,
    @JsonKey(name: 'libelle') required String name,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'subcategory') Subcategory? subcategory,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}
