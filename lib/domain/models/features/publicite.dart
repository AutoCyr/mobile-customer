import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'publicite.freezed.dart';
part 'publicite.g.dart';

@freezed
class Publicite with _$Publicite {
  const factory Publicite({
    @JsonKey(name: 'publicite_id') required int publiciteId,
    @JsonKey(name: 'libelle') required String libelle,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'banner') required String banner,
    @JsonKey(name: 'nom_annonceur') required String nomAnnonceur,
    @JsonKey(name: 'contact_annonceur') required String contactAnnonceur,
    @JsonKey(name: 'siteweb_annonceur') String? sitewebAnnonceur,
    @JsonKey(name: 'date_debut', fromJson: _dateTimeFromJson) required DateTime dateDebut,
    @JsonKey(name: 'date_fin', fromJson: _dateTimeFromJson) required DateTime dateFin,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'priorite') required int priorite,
    @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson) required DateTime createdAt,
    @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson) required DateTime updatedAt,
  }) = _Publicite;

  factory Publicite.fromJson(Map<String, dynamic> json) => _$PubliciteFromJson(json);
}

// Fonction utilitaire pour parser les dates
DateTime _dateTimeFromJson(String json) => DateTime.parse(json);