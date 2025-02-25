// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partenaire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartenaireImpl _$$PartenaireImplFromJson(Map<String, dynamic> json) =>
    _$PartenaireImpl(
      partenaireId: (json['partenaire_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      paysId: (json['pays_id'] as num).toInt(),
      typeId: (json['type_id'] as num).toInt(),
      raisonSociale: json['raison_sociale'] as String,
      telephonePartenaire: json['telephone_partenaire'] as String,
      emailPartenaire: json['email_partenaire'] as String,
      villePartenaire: json['ville_partenaire'] as String,
      quartierPartenaire: json['quartier_partenaire'] as String,
      adressesPartenaire: (json['adresses_partenaire'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PartenaireImplToJson(_$PartenaireImpl instance) =>
    <String, dynamic>{
      'partenaire_id': instance.partenaireId,
      'user_id': instance.userId,
      'pays_id': instance.paysId,
      'type_id': instance.typeId,
      'raison_sociale': instance.raisonSociale,
      'telephone_partenaire': instance.telephonePartenaire,
      'email_partenaire': instance.emailPartenaire,
      'ville_partenaire': instance.villePartenaire,
      'quartier_partenaire': instance.quartierPartenaire,
      'adresses_partenaire': instance.adressesPartenaire,
    };
