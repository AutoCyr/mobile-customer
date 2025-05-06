// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publicite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PubliciteImpl _$$PubliciteImplFromJson(Map<String, dynamic> json) =>
    _$PubliciteImpl(
      publiciteId: (json['publicite_id'] as num).toInt(),
      libelle: json['libelle'] as String,
      description: json['description'] as String,
      banner: json['banner'] as String,
      nomAnnonceur: json['nom_annonceur'] as String,
      contactAnnonceur: json['contact_annonceur'] as String,
      sitewebAnnonceur: json['siteweb_annonceur'] as String?,
      dateDebut: _dateTimeFromJson(json['date_debut'] as String),
      dateFin: _dateTimeFromJson(json['date_fin'] as String),
      status: json['status'] as String,
      priorite: (json['priorite'] as num).toInt(),
      createdAt: _dateTimeFromJson(json['created_at'] as String),
      updatedAt: _dateTimeFromJson(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PubliciteImplToJson(_$PubliciteImpl instance) =>
    <String, dynamic>{
      'publicite_id': instance.publiciteId,
      'libelle': instance.libelle,
      'description': instance.description,
      'banner': instance.banner,
      'nom_annonceur': instance.nomAnnonceur,
      'contact_annonceur': instance.contactAnnonceur,
      'siteweb_annonceur': instance.sitewebAnnonceur,
      'date_debut': instance.dateDebut.toIso8601String(),
      'date_fin': instance.dateFin.toIso8601String(),
      'status': instance.status,
      'priorite': instance.priorite,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
