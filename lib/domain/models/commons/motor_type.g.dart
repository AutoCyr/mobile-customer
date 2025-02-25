// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motor_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MotorTypeImpl _$$MotorTypeImplFromJson(Map<String, dynamic> json) =>
    _$MotorTypeImpl(
      id: (json['type_moteur_id'] as num).toInt(),
      libelle: json['libelle'] as String,
      statut: (json['statut'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$MotorTypeImplToJson(_$MotorTypeImpl instance) =>
    <String, dynamic>{
      'type_moteur_id': instance.id,
      'libelle': instance.libelle,
      'statut': instance.statut,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
