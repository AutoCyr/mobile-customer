import 'package:autocyr/domain/models/abstractables/selectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bike_make.freezed.dart';
part 'bike_make.g.dart';

@freezed
class BikeMake with _$BikeMake implements Selectable {
  const factory BikeMake({
    @JsonKey(name: 'marque_id') required int id,
    @JsonKey(name: 'libelle_marque') required String name,
    @JsonKey(name: 'type_marque') required int typeMarque,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _BikeMake;

  factory BikeMake.fromJson(Map<String, dynamic> json) => _$BikeMakeFromJson(json);
}
