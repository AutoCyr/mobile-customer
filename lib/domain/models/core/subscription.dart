import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
    @JsonKey(name: 'souscription_id') required int souscriptionId,
    @JsonKey(name: 'abonnement_id') required int abonnementId,
    @JsonKey(name: 'partenaire_id') required int partenaireId,
    @JsonKey(name: 'date_souscription') required DateTime dateSouscription,
    @JsonKey(name: 'date_debut') required DateTime? dateDebut,
    @JsonKey(name: 'date_fin') required DateTime? dateFin,
    @JsonKey(name: 'statut') required int status,
    @JsonKey(name: 'updated_at') required String? updatedAt,
    @JsonKey(name: 'created_at') required String? createdAt,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
}
