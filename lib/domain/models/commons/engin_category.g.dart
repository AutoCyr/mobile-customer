// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engin_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnginCategoryImpl _$$EnginCategoryImplFromJson(Map<String, dynamic> json) =>
    _$EnginCategoryImpl(
      id: (json['categorie_engin_id'] as num).toInt(),
      libelle: json['libelle'] as String,
      statut: (json['statut'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$EnginCategoryImplToJson(_$EnginCategoryImpl instance) =>
    <String, dynamic>{
      'categorie_engin_id': instance.id,
      'libelle': instance.libelle,
      'statut': instance.statut,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
