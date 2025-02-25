// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_disponibility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoDisponibilityImpl _$$AutoDisponibilityImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoDisponibilityImpl(
      disponibiliteAutoId: (json['disponibilite_auto_id'] as num).toInt(),
      partenaireId: (json['partenaire_id'] as num).toInt(),
      detailPieceId: (json['detail_piece_id'] as num).toInt(),
      typeAutoId: (json['type_auto_id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      typeAuto: AutoType.fromJson(json['type_auto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AutoDisponibilityImplToJson(
        _$AutoDisponibilityImpl instance) =>
    <String, dynamic>{
      'disponibilite_auto_id': instance.disponibiliteAutoId,
      'partenaire_id': instance.partenaireId,
      'detail_piece_id': instance.detailPieceId,
      'type_auto_id': instance.typeAutoId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'type_auto': instance.typeAuto,
    };
