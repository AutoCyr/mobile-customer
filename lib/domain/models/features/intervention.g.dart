// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intervention.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterventionImpl _$$InterventionImplFromJson(Map<String, dynamic> json) =>
    _$InterventionImpl(
      interventionId: (json['intervention_id'] as num).toInt(),
      demandeId: (json['demande_id'] as num).toInt(),
      clientId: (json['client_id'] as num).toInt(),
      partenaireId: (json['partenaire_id'] as num).toInt(),
      dateheureIntervention:
          DateTime.parse(json['dateheure_intervention'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      partenaire:
          Partenaire.fromJson(json['partenaire'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InterventionImplToJson(_$InterventionImpl instance) =>
    <String, dynamic>{
      'intervention_id': instance.interventionId,
      'demande_id': instance.demandeId,
      'client_id': instance.clientId,
      'partenaire_id': instance.partenaireId,
      'dateheure_intervention':
          instance.dateheureIntervention.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'partenaire': instance.partenaire,
    };
