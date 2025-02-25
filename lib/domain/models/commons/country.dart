import 'package:autocyr/domain/models/abstractables/selectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country implements Selectable {
  const factory Country({
    @JsonKey(name: 'pays_id') required int id,
    @JsonKey(name: 'nom_pays') required String name,
    @JsonKey(name: 'code_pays') required String countryCode,
    @JsonKey(name: 'initial_pays') required String initials,
    @JsonKey(name: 'statut') required int status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
}
