import 'package:autocyr/domain/models/commons/country.dart';
import 'package:autocyr/domain/models/profile/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';
part 'client.g.dart';

@freezed
class Client with _$Client {
  const factory Client({
    @JsonKey(name: 'client_id') required int clientId,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'pays_id') required int paysId,
    @JsonKey(name: 'pseudo_client') required String pseudoClient,
    @JsonKey(name: 'telephone_1') required String telephone1,
    @JsonKey(name: 'telephone_2') String? telephone2,
    @JsonKey(name: 'adresses_client') List<Address>? adressesClient,
    @JsonKey(name: 'pays') Country? pays,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}
