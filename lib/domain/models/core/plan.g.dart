// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanImpl _$$PlanImplFromJson(Map<String, dynamic> json) => _$PlanImpl(
      id: (json['abonnement_id'] as num).toInt(),
      libelle: json['libelle_abonnement'] as String,
      montant: (json['montant_abonnement'] as num).toInt(),
      duree: (json['duree_abonnement'] as num).toInt(),
      isPromo: (json['is_promo'] as num).toInt(),
      montantPromotion: (json['montant_promotion'] as num).toInt(),
      statut: (json['statut'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PlanImplToJson(_$PlanImpl instance) =>
    <String, dynamic>{
      'abonnement_id': instance.id,
      'libelle_abonnement': instance.libelle,
      'montant_abonnement': instance.montant,
      'duree_abonnement': instance.duree,
      'is_promo': instance.isPromo,
      'montant_promotion': instance.montantPromotion,
      'statut': instance.statut,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
