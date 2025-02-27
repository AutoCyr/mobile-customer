import 'package:autocyr/domain/models/profile/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partenaire.freezed.dart';
part 'partenaire.g.dart';

@freezed
class Partenaire with _$Partenaire {
  const factory Partenaire({
    @JsonKey(name: 'partenaire_id') required int partenaireId,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'pays_id') required int paysId,
    @JsonKey(name: 'type_id') required int typeId,
    @JsonKey(name: 'raison_sociale') required String raisonSociale,
    @JsonKey(name: 'telephone_partenaire') required String telephonePartenaire,
    @JsonKey(name: 'email_partenaire') required String emailPartenaire,
    @JsonKey(name: 'ville_partenaire') required String villePartenaire,
    @JsonKey(name: 'quartier_partenaire') required String quartierPartenaire,
    @JsonKey(name: 'adresses_partenaire') List<Address>? adressesPartenaire,
  }) = _Partenaire;

  factory Partenaire.fromJson(Map<String, dynamic> json) => _$PartenaireFromJson(json);
}
