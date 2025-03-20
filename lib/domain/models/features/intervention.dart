import 'package:autocyr/domain/models/profile/partenaire.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'intervention.freezed.dart';
part 'intervention.g.dart';

@freezed
class Intervention with _$Intervention {
  const factory Intervention({
    @JsonKey(name: 'intervention_id') required int interventionId,
    @JsonKey(name: 'demande_id') required int demandeId,
    @JsonKey(name: 'client_id') required int clientId,
    @JsonKey(name: 'partenaire_id') required int partenaireId,
    @JsonKey(name: 'dateheure_intervention') required DateTime dateheureIntervention,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'partenaire') required Partenaire partenaire,
  }) = _Intervention;

  factory Intervention.fromJson(Map<String, dynamic> json) => _$InterventionFromJson(json);
}
