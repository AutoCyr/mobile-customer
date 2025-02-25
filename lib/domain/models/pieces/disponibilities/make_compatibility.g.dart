// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'make_compatibility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MakeCompatibilityImpl _$$MakeCompatibilityImplFromJson(
        Map<String, dynamic> json) =>
    _$MakeCompatibilityImpl(
      compatibiliteMarqueId: (json['compatibilite_marque_id'] as num).toInt(),
      detailPieceId: (json['detail_piece_id'] as num).toInt(),
      marqueId: (json['marque_id'] as num).toInt(),
      partenaireId: (json['partenaire_id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      marque: Make.fromJson(json['marque'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MakeCompatibilityImplToJson(
        _$MakeCompatibilityImpl instance) =>
    <String, dynamic>{
      'compatibilite_marque_id': instance.compatibiliteMarqueId,
      'detail_piece_id': instance.detailPieceId,
      'marque_id': instance.marqueId,
      'partenaire_id': instance.partenaireId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'marque': instance.marque,
    };
