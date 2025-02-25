// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_piece.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailPieceImpl _$$DetailPieceImplFromJson(Map<String, dynamic> json) =>
    _$DetailPieceImpl(
      detailPieceId: (json['detail_piece_id'] as num).toInt(),
      partenaireId: (json['partenaire_id'] as num).toInt(),
      pieceId: (json['piece_id'] as num?)?.toInt(),
      articleId: (json['article_id'] as num?)?.toInt(),
      typeEnginId: (json['type_engin_id'] as num).toInt(),
      prixPiece: (json['prix_piece'] as num).toInt(),
      garantie: (json['garantie'] as num).toInt(),
      autres: json['autres'] as String?,
      imagePiece: json['image_piece'] as String,
      statut: (json['statut'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      piece: json['piece'] == null
          ? null
          : Piece.fromJson(json['piece'] as Map<String, dynamic>),
      article: json['article'] == null
          ? null
          : Article.fromJson(json['article'] as Map<String, dynamic>),
      typeEngin: EnginType.fromJson(json['type_engin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailPieceImplToJson(_$DetailPieceImpl instance) =>
    <String, dynamic>{
      'detail_piece_id': instance.detailPieceId,
      'partenaire_id': instance.partenaireId,
      'piece_id': instance.pieceId,
      'article_id': instance.articleId,
      'type_engin_id': instance.typeEnginId,
      'prix_piece': instance.prixPiece,
      'garantie': instance.garantie,
      'autres': instance.autres,
      'image_piece': instance.imagePiece,
      'statut': instance.statut,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'piece': instance.piece,
      'article': instance.article,
      'type_engin': instance.typeEngin,
    };
