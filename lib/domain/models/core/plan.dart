import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan.freezed.dart';
part 'plan.g.dart';

@freezed
class Plan with _$Plan {
  const factory Plan({
    @JsonKey(name: 'abonnement_id') required int id,
    @JsonKey(name: 'libelle_abonnement') required String libelle,
    @JsonKey(name: 'montant_abonnement') required int montant,
    @JsonKey(name: 'duree_abonnement') required int duree,
    @JsonKey(name: 'is_promo') required int isPromo,
    @JsonKey(name: 'montant_promotion') required int montantPromotion,
    @JsonKey(name: 'statut') required int statut,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}