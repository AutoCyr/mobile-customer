// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commande.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommandeImpl _$$CommandeImplFromJson(Map<String, dynamic> json) =>
    _$CommandeImpl(
      commandeId: (json['commande_id'] as num).toInt(),
      detailPieceId: (json['detail_piece_id'] as num).toInt(),
      clientId: (json['client_id'] as num).toInt(),
      partenaireId: (json['partenaire_id'] as num).toInt(),
      dateCommande: DateTime.parse(json['date_commande'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      partenaire:
          Partenaire.fromJson(json['partenaire'] as Map<String, dynamic>),
      client: Client.fromJson(json['client'] as Map<String, dynamic>),
      pieceDetail:
          DetailPiece.fromJson(json['piece_detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommandeImplToJson(_$CommandeImpl instance) =>
    <String, dynamic>{
      'commande_id': instance.commandeId,
      'detail_piece_id': instance.detailPieceId,
      'client_id': instance.clientId,
      'partenaire_id': instance.partenaireId,
      'date_commande': instance.dateCommande.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'partenaire': instance.partenaire,
      'client': instance.client,
      'piece_detail': instance.pieceDetail,
    };
