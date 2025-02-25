// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_disponibility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDisponibilityImpl _$$CategoryDisponibilityImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDisponibilityImpl(
      disponibiliteEnginId: (json['disponibilite_engin_id'] as num).toInt(),
      partenaireId: (json['partenaire_id'] as num).toInt(),
      detailPieceId: (json['detail_piece_id'] as num).toInt(),
      categorieEnginId: (json['categorie_engin_id'] as num).toInt(),
      hybride: (json['hybride'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      categorieEngin: EnginCategory.fromJson(
          json['categorie_engin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryDisponibilityImplToJson(
        _$CategoryDisponibilityImpl instance) =>
    <String, dynamic>{
      'disponibilite_engin_id': instance.disponibiliteEnginId,
      'partenaire_id': instance.partenaireId,
      'detail_piece_id': instance.detailPieceId,
      'categorie_engin_id': instance.categorieEnginId,
      'hybride': instance.hybride,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'categorie_engin': instance.categorieEngin,
    };
