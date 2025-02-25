// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientImpl _$$ClientImplFromJson(Map<String, dynamic> json) => _$ClientImpl(
      clientId: (json['client_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      paysId: (json['pays_id'] as num).toInt(),
      pseudoClient: json['pseudo_client'] as String,
      telephone1: json['telephone_1'] as String,
      telephone2: json['telephone_2'] as String?,
      adressesClient: (json['adresses_client'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClientImplToJson(_$ClientImpl instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'user_id': instance.userId,
      'pays_id': instance.paysId,
      'pseudo_client': instance.pseudoClient,
      'telephone_1': instance.telephone1,
      'telephone_2': instance.telephone2,
      'adresses_client': instance.adressesClient,
    };
