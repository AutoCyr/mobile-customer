// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      souscriptionId: (json['souscription_id'] as num).toInt(),
      abonnementId: (json['abonnement_id'] as num).toInt(),
      partenaireId: (json['partenaire_id'] as num).toInt(),
      dateSouscription: DateTime.parse(json['date_souscription'] as String),
      dateDebut: json['date_debut'] == null
          ? null
          : DateTime.parse(json['date_debut'] as String),
      dateFin: json['date_fin'] == null
          ? null
          : DateTime.parse(json['date_fin'] as String),
      status: (json['statut'] as num).toInt(),
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'souscription_id': instance.souscriptionId,
      'abonnement_id': instance.abonnementId,
      'partenaire_id': instance.partenaireId,
      'date_souscription': instance.dateSouscription.toIso8601String(),
      'date_debut': instance.dateDebut?.toIso8601String(),
      'date_fin': instance.dateFin?.toIso8601String(),
      'statut': instance.status,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };
