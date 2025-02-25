// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_make.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarMakeImpl _$$CarMakeImplFromJson(Map<String, dynamic> json) =>
    _$CarMakeImpl(
      id: (json['marque_id'] as num).toInt(),
      name: json['libelle_marque'] as String,
      typeMarque: (json['type_marque'] as num).toInt(),
      statut: (json['statut'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CarMakeImplToJson(_$CarMakeImpl instance) =>
    <String, dynamic>{
      'marque_id': instance.id,
      'libelle_marque': instance.name,
      'type_marque': instance.typeMarque,
      'statut': instance.statut,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
