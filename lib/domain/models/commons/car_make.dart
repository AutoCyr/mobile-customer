import 'package:autocyr/domain/models/abstractables/selectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_make.freezed.dart';
part 'car_make.g.dart';

@freezed
class CarMake with _$CarMake implements Selectable {
  const factory CarMake({
    @JsonKey(name: 'marque_id') required int id,
    @JsonKey(name: 'libelle_marque') required String name,
    @JsonKey(name: 'type_marque') required int typeMarque,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _CarMake;

  factory CarMake.fromJson(Map<String, dynamic> json) => _$CarMakeFromJson(json);
}
