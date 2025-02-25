import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
class Meta with _$Meta {
  const factory Meta({
    required int total,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'first_page') required int firstPage,
    @JsonKey(name: 'first_page_url') required String? firstPageUrl,
    @JsonKey(name: 'last_page_url') required String? lastPageUrl,
    @JsonKey(name: 'next_page_url') required String? nextPageUrl,
    @JsonKey(name: 'previous_page_url') required String? previousPageUrl,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
