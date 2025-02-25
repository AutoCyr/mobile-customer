// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoTypeImpl _$$AutoTypeImplFromJson(Map<String, dynamic> json) =>
    _$AutoTypeImpl(
      id: (json['type_auto_id'] as num).toInt(),
      libelle: json['libelle'] as String,
      statut: (json['statut'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AutoTypeImplToJson(_$AutoTypeImpl instance) =>
    <String, dynamic>{
      'type_auto_id': instance.id,
      'libelle': instance.libelle,
      'statut': instance.statut,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
