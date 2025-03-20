import 'package:autocyr/domain/models/commons/engin_type.dart';
import 'package:autocyr/domain/models/core/article.dart';
import 'package:autocyr/domain/models/features/intervention.dart';
import 'package:autocyr/domain/models/pieces/make.dart';
import 'package:autocyr/domain/models/profile/client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'demande_info.freezed.dart';
part 'demande_info.g.dart';

@freezed
class DemandeInfo with _$DemandeInfo {
  const factory DemandeInfo({
    @JsonKey(name: 'demande_id') required int demandeId,
    @JsonKey(name: 'client_id') required int clientId,
    @JsonKey(name: 'article_id') required int articleId,
    @JsonKey(name: 'type_engin_id') required int typeEnginId,
    @JsonKey(name: 'marque_id') required int marqueId,
    @JsonKey(name: 'reference') required String reference,
    @JsonKey(name: 'description_piece') required String descriptionPiece,
    @JsonKey(name: 'modele_piece') String? modelePiece,
    @JsonKey(name: 'numero_piece') String? numeroPiece,
    @JsonKey(name: 'annee_piece') String? anneePiece,
    @JsonKey(name: 'garantie') required int garantie,
    @JsonKey(name: 'autres') String? autres,
    @JsonKey(name: 'date_demande') required DateTime dateDemande,
    @JsonKey(name: 'etat_demande') required int etatDemande,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'client') required Client client,
    @JsonKey(name: 'article') required Article article,
    @JsonKey(name: 'type_engin') required EnginType typeEngin,
    @JsonKey(name: 'marque') required Make marque,
    @JsonKey(name: 'interventions') required List<Intervention> interventions,
  }) = _DemandeInfo;

  factory DemandeInfo.fromJson(Map<String, dynamic> json) => _$DemandeInfoFromJson(json);
}
