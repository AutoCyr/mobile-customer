// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motor_disponibility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MotorDisponibilityImpl _$$MotorDisponibilityImplFromJson(
        Map<String, dynamic> json) =>
    _$MotorDisponibilityImpl(
      disponibiliteMoteurId: (json['disponibilite_moteur_id'] as num).toInt(),
      partenaireId: (json['partenaire_id'] as num).toInt(),
      detailPieceId: (json['detail_piece_id'] as num).toInt(),
      typeMoteurId: (json['type_moteur_id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      typeMoteur:
          MotorType.fromJson(json['type_moteur'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MotorDisponibilityImplToJson(
        _$MotorDisponibilityImpl instance) =>
    <String, dynamic>{
      'disponibilite_moteur_id': instance.disponibiliteMoteurId,
      'partenaire_id': instance.partenaireId,
      'detail_piece_id': instance.detailPieceId,
      'type_moteur_id': instance.typeMoteurId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'type_moteur': instance.typeMoteur,
    };
