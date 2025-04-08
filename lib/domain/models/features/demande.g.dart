// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'demande.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DemandeImpl _$$DemandeImplFromJson(Map<String, dynamic> json) =>
    _$DemandeImpl(
      demandeId: (json['demande_id'] as num).toInt(),
      clientId: (json['client_id'] as num).toInt(),
      articleId: (json['article_id'] as num).toInt(),
      typeEnginId: (json['type_engin_id'] as num).toInt(),
      marqueId: (json['marque_id'] as num).toInt(),
      reference: json['reference'] as String,
      descriptionPiece: json['description_piece'] as String,
      modelePiece: json['modele_piece'] as String?,
      numeroPiece: json['numero_piece'] as String?,
      anneePiece: json['annee_piece'] as String?,
      garantie: (json['garantie'] as num).toInt(),
      autres: json['autres'] as String?,
      imagePiece: json['image_piece'] as String?,
      dateDemande: DateTime.parse(json['date_demande'] as String),
      etatDemande: (json['etat_demande'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      client: Client.fromJson(json['client'] as Map<String, dynamic>),
      article: Article.fromJson(json['article'] as Map<String, dynamic>),
      typeEngin: EnginType.fromJson(json['type_engin'] as Map<String, dynamic>),
      marque: Make.fromJson(json['marque'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DemandeImplToJson(_$DemandeImpl instance) =>
    <String, dynamic>{
      'demande_id': instance.demandeId,
      'client_id': instance.clientId,
      'article_id': instance.articleId,
      'type_engin_id': instance.typeEnginId,
      'marque_id': instance.marqueId,
      'reference': instance.reference,
      'description_piece': instance.descriptionPiece,
      'modele_piece': instance.modelePiece,
      'numero_piece': instance.numeroPiece,
      'annee_piece': instance.anneePiece,
      'garantie': instance.garantie,
      'autres': instance.autres,
      'image_piece': instance.imagePiece,
      'date_demande': instance.dateDemande.toIso8601String(),
      'etat_demande': instance.etatDemande,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'client': instance.client,
      'article': instance.article,
      'type_engin': instance.typeEngin,
      'marque': instance.marque,
    };
