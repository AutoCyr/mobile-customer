// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartnerTypeImpl _$$PartnerTypeImplFromJson(Map<String, dynamic> json) =>
    _$PartnerTypeImpl(
      id: (json['type_id'] as num).toInt(),
      libelle: json['libelle'] as String,
      status: (json['statut'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PartnerTypeImplToJson(_$PartnerTypeImpl instance) =>
    <String, dynamic>{
      'type_id': instance.id,
      'libelle': instance.libelle,
      'statut': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
