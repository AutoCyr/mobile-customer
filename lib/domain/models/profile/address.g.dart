// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      libelle: json['libelle'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      status: (json['statut'] as num).toInt(),
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'libelle': instance.libelle,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'statut': instance.status,
    };
