// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demande_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DemandeInfo _$DemandeInfoFromJson(Map<String, dynamic> json) {
  return _DemandeInfo.fromJson(json);
}

/// @nodoc
mixin _$DemandeInfo {
  @JsonKey(name: 'demande_id')
  int get demandeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  int get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'article_id')
  int get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_engin_id')
  int get typeEnginId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marque_id')
  int get marqueId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference')
  String get reference => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_piece')
  String get descriptionPiece => throw _privateConstructorUsedError;
  @JsonKey(name: 'modele_piece')
  String? get modelePiece => throw _privateConstructorUsedError;
  @JsonKey(name: 'numero_piece')
  String? get numeroPiece => throw _privateConstructorUsedError;
  @JsonKey(name: 'annee_piece')
  String? get anneePiece => throw _privateConstructorUsedError;
  @JsonKey(name: 'garantie')
  int get garantie => throw _privateConstructorUsedError;
  @JsonKey(name: 'autres')
  String? get autres => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_piece')
  String? get imagePiece => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_demande')
  DateTime get dateDemande => throw _privateConstructorUsedError;
  @JsonKey(name: 'etat_demande')
  int get etatDemande => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'client')
  Client get client => throw _privateConstructorUsedError;
  @JsonKey(name: 'article')
  Article get article => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_engin')
  EnginType get typeEngin => throw _privateConstructorUsedError;
  @JsonKey(name: 'marque')
  Make get marque => throw _privateConstructorUsedError;
  @JsonKey(name: 'interventions')
  List<Intervention> get interventions => throw _privateConstructorUsedError;

  /// Serializes this DemandeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DemandeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DemandeInfoCopyWith<DemandeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemandeInfoCopyWith<$Res> {
  factory $DemandeInfoCopyWith(
          DemandeInfo value, $Res Function(DemandeInfo) then) =
      _$DemandeInfoCopyWithImpl<$Res, DemandeInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'demande_id') int demandeId,
      @JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'article_id') int articleId,
      @JsonKey(name: 'type_engin_id') int typeEnginId,
      @JsonKey(name: 'marque_id') int marqueId,
      @JsonKey(name: 'reference') String reference,
      @JsonKey(name: 'description_piece') String descriptionPiece,
      @JsonKey(name: 'modele_piece') String? modelePiece,
      @JsonKey(name: 'numero_piece') String? numeroPiece,
      @JsonKey(name: 'annee_piece') String? anneePiece,
      @JsonKey(name: 'garantie') int garantie,
      @JsonKey(name: 'autres') String? autres,
      @JsonKey(name: 'image_piece') String? imagePiece,
      @JsonKey(name: 'date_demande') DateTime dateDemande,
      @JsonKey(name: 'etat_demande') int etatDemande,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'client') Client client,
      @JsonKey(name: 'article') Article article,
      @JsonKey(name: 'type_engin') EnginType typeEngin,
      @JsonKey(name: 'marque') Make marque,
      @JsonKey(name: 'interventions') List<Intervention> interventions});

  $ClientCopyWith<$Res> get client;
  $ArticleCopyWith<$Res> get article;
  $EnginTypeCopyWith<$Res> get typeEngin;
  $MakeCopyWith<$Res> get marque;
}

/// @nodoc
class _$DemandeInfoCopyWithImpl<$Res, $Val extends DemandeInfo>
    implements $DemandeInfoCopyWith<$Res> {
  _$DemandeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DemandeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? demandeId = null,
    Object? clientId = null,
    Object? articleId = null,
    Object? typeEnginId = null,
    Object? marqueId = null,
    Object? reference = null,
    Object? descriptionPiece = null,
    Object? modelePiece = freezed,
    Object? numeroPiece = freezed,
    Object? anneePiece = freezed,
    Object? garantie = null,
    Object? autres = freezed,
    Object? imagePiece = freezed,
    Object? dateDemande = null,
    Object? etatDemande = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? client = null,
    Object? article = null,
    Object? typeEngin = null,
    Object? marque = null,
    Object? interventions = null,
  }) {
    return _then(_value.copyWith(
      demandeId: null == demandeId
          ? _value.demandeId
          : demandeId // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int,
      typeEnginId: null == typeEnginId
          ? _value.typeEnginId
          : typeEnginId // ignore: cast_nullable_to_non_nullable
              as int,
      marqueId: null == marqueId
          ? _value.marqueId
          : marqueId // ignore: cast_nullable_to_non_nullable
              as int,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionPiece: null == descriptionPiece
          ? _value.descriptionPiece
          : descriptionPiece // ignore: cast_nullable_to_non_nullable
              as String,
      modelePiece: freezed == modelePiece
          ? _value.modelePiece
          : modelePiece // ignore: cast_nullable_to_non_nullable
              as String?,
      numeroPiece: freezed == numeroPiece
          ? _value.numeroPiece
          : numeroPiece // ignore: cast_nullable_to_non_nullable
              as String?,
      anneePiece: freezed == anneePiece
          ? _value.anneePiece
          : anneePiece // ignore: cast_nullable_to_non_nullable
              as String?,
      garantie: null == garantie
          ? _value.garantie
          : garantie // ignore: cast_nullable_to_non_nullable
              as int,
      autres: freezed == autres
          ? _value.autres
          : autres // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePiece: freezed == imagePiece
          ? _value.imagePiece
          : imagePiece // ignore: cast_nullable_to_non_nullable
              as String?,
      dateDemande: null == dateDemande
          ? _value.dateDemande
          : dateDemande // ignore: cast_nullable_to_non_nullable
              as DateTime,
      etatDemande: null == etatDemande
          ? _value.etatDemande
          : etatDemande // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
      typeEngin: null == typeEngin
          ? _value.typeEngin
          : typeEngin // ignore: cast_nullable_to_non_nullable
              as EnginType,
      marque: null == marque
          ? _value.marque
          : marque // ignore: cast_nullable_to_non_nullable
              as Make,
      interventions: null == interventions
          ? _value.interventions
          : interventions // ignore: cast_nullable_to_non_nullable
              as List<Intervention>,
    ) as $Val);
  }

  /// Create a copy of DemandeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  /// Create a copy of DemandeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res> get article {
    return $ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value) as $Val);
    });
  }

  /// Create a copy of DemandeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EnginTypeCopyWith<$Res> get typeEngin {
    return $EnginTypeCopyWith<$Res>(_value.typeEngin, (value) {
      return _then(_value.copyWith(typeEngin: value) as $Val);
    });
  }

  /// Create a copy of DemandeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MakeCopyWith<$Res> get marque {
    return $MakeCopyWith<$Res>(_value.marque, (value) {
      return _then(_value.copyWith(marque: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DemandeInfoImplCopyWith<$Res>
    implements $DemandeInfoCopyWith<$Res> {
  factory _$$DemandeInfoImplCopyWith(
          _$DemandeInfoImpl value, $Res Function(_$DemandeInfoImpl) then) =
      __$$DemandeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'demande_id') int demandeId,
      @JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'article_id') int articleId,
      @JsonKey(name: 'type_engin_id') int typeEnginId,
      @JsonKey(name: 'marque_id') int marqueId,
      @JsonKey(name: 'reference') String reference,
      @JsonKey(name: 'description_piece') String descriptionPiece,
      @JsonKey(name: 'modele_piece') String? modelePiece,
      @JsonKey(name: 'numero_piece') String? numeroPiece,
      @JsonKey(name: 'annee_piece') String? anneePiece,
      @JsonKey(name: 'garantie') int garantie,
      @JsonKey(name: 'autres') String? autres,
      @JsonKey(name: 'image_piece') String? imagePiece,
      @JsonKey(name: 'date_demande') DateTime dateDemande,
      @JsonKey(name: 'etat_demande') int etatDemande,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'client') Client client,
      @JsonKey(name: 'article') Article article,
      @JsonKey(name: 'type_engin') EnginType typeEngin,
      @JsonKey(name: 'marque') Make marque,
      @JsonKey(name: 'interventions') List<Intervention> interventions});

  @override
  $ClientCopyWith<$Res> get client;
  @override
  $ArticleCopyWith<$Res> get article;
  @override
  $EnginTypeCopyWith<$Res> get typeEngin;
  @override
  $MakeCopyWith<$Res> get marque;
}

/// @nodoc
class __$$DemandeInfoImplCopyWithImpl<$Res>
    extends _$DemandeInfoCopyWithImpl<$Res, _$DemandeInfoImpl>
    implements _$$DemandeInfoImplCopyWith<$Res> {
  __$$DemandeInfoImplCopyWithImpl(
      _$DemandeInfoImpl _value, $Res Function(_$DemandeInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DemandeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? demandeId = null,
    Object? clientId = null,
    Object? articleId = null,
    Object? typeEnginId = null,
    Object? marqueId = null,
    Object? reference = null,
    Object? descriptionPiece = null,
    Object? modelePiece = freezed,
    Object? numeroPiece = freezed,
    Object? anneePiece = freezed,
    Object? garantie = null,
    Object? autres = freezed,
    Object? imagePiece = freezed,
    Object? dateDemande = null,
    Object? etatDemande = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? client = null,
    Object? article = null,
    Object? typeEngin = null,
    Object? marque = null,
    Object? interventions = null,
  }) {
    return _then(_$DemandeInfoImpl(
      demandeId: null == demandeId
          ? _value.demandeId
          : demandeId // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int,
      typeEnginId: null == typeEnginId
          ? _value.typeEnginId
          : typeEnginId // ignore: cast_nullable_to_non_nullable
              as int,
      marqueId: null == marqueId
          ? _value.marqueId
          : marqueId // ignore: cast_nullable_to_non_nullable
              as int,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionPiece: null == descriptionPiece
          ? _value.descriptionPiece
          : descriptionPiece // ignore: cast_nullable_to_non_nullable
              as String,
      modelePiece: freezed == modelePiece
          ? _value.modelePiece
          : modelePiece // ignore: cast_nullable_to_non_nullable
              as String?,
      numeroPiece: freezed == numeroPiece
          ? _value.numeroPiece
          : numeroPiece // ignore: cast_nullable_to_non_nullable
              as String?,
      anneePiece: freezed == anneePiece
          ? _value.anneePiece
          : anneePiece // ignore: cast_nullable_to_non_nullable
              as String?,
      garantie: null == garantie
          ? _value.garantie
          : garantie // ignore: cast_nullable_to_non_nullable
              as int,
      autres: freezed == autres
          ? _value.autres
          : autres // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePiece: freezed == imagePiece
          ? _value.imagePiece
          : imagePiece // ignore: cast_nullable_to_non_nullable
              as String?,
      dateDemande: null == dateDemande
          ? _value.dateDemande
          : dateDemande // ignore: cast_nullable_to_non_nullable
              as DateTime,
      etatDemande: null == etatDemande
          ? _value.etatDemande
          : etatDemande // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
      typeEngin: null == typeEngin
          ? _value.typeEngin
          : typeEngin // ignore: cast_nullable_to_non_nullable
              as EnginType,
      marque: null == marque
          ? _value.marque
          : marque // ignore: cast_nullable_to_non_nullable
              as Make,
      interventions: null == interventions
          ? _value._interventions
          : interventions // ignore: cast_nullable_to_non_nullable
              as List<Intervention>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemandeInfoImpl implements _DemandeInfo {
  const _$DemandeInfoImpl(
      {@JsonKey(name: 'demande_id') required this.demandeId,
      @JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'article_id') required this.articleId,
      @JsonKey(name: 'type_engin_id') required this.typeEnginId,
      @JsonKey(name: 'marque_id') required this.marqueId,
      @JsonKey(name: 'reference') required this.reference,
      @JsonKey(name: 'description_piece') required this.descriptionPiece,
      @JsonKey(name: 'modele_piece') this.modelePiece,
      @JsonKey(name: 'numero_piece') this.numeroPiece,
      @JsonKey(name: 'annee_piece') this.anneePiece,
      @JsonKey(name: 'garantie') required this.garantie,
      @JsonKey(name: 'autres') this.autres,
      @JsonKey(name: 'image_piece') this.imagePiece,
      @JsonKey(name: 'date_demande') required this.dateDemande,
      @JsonKey(name: 'etat_demande') required this.etatDemande,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'client') required this.client,
      @JsonKey(name: 'article') required this.article,
      @JsonKey(name: 'type_engin') required this.typeEngin,
      @JsonKey(name: 'marque') required this.marque,
      @JsonKey(name: 'interventions')
      required final List<Intervention> interventions})
      : _interventions = interventions;

  factory _$DemandeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DemandeInfoImplFromJson(json);

  @override
  @JsonKey(name: 'demande_id')
  final int demandeId;
  @override
  @JsonKey(name: 'client_id')
  final int clientId;
  @override
  @JsonKey(name: 'article_id')
  final int articleId;
  @override
  @JsonKey(name: 'type_engin_id')
  final int typeEnginId;
  @override
  @JsonKey(name: 'marque_id')
  final int marqueId;
  @override
  @JsonKey(name: 'reference')
  final String reference;
  @override
  @JsonKey(name: 'description_piece')
  final String descriptionPiece;
  @override
  @JsonKey(name: 'modele_piece')
  final String? modelePiece;
  @override
  @JsonKey(name: 'numero_piece')
  final String? numeroPiece;
  @override
  @JsonKey(name: 'annee_piece')
  final String? anneePiece;
  @override
  @JsonKey(name: 'garantie')
  final int garantie;
  @override
  @JsonKey(name: 'autres')
  final String? autres;
  @override
  @JsonKey(name: 'image_piece')
  final String? imagePiece;
  @override
  @JsonKey(name: 'date_demande')
  final DateTime dateDemande;
  @override
  @JsonKey(name: 'etat_demande')
  final int etatDemande;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'client')
  final Client client;
  @override
  @JsonKey(name: 'article')
  final Article article;
  @override
  @JsonKey(name: 'type_engin')
  final EnginType typeEngin;
  @override
  @JsonKey(name: 'marque')
  final Make marque;
  final List<Intervention> _interventions;
  @override
  @JsonKey(name: 'interventions')
  List<Intervention> get interventions {
    if (_interventions is EqualUnmodifiableListView) return _interventions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interventions);
  }

  @override
  String toString() {
    return 'DemandeInfo(demandeId: $demandeId, clientId: $clientId, articleId: $articleId, typeEnginId: $typeEnginId, marqueId: $marqueId, reference: $reference, descriptionPiece: $descriptionPiece, modelePiece: $modelePiece, numeroPiece: $numeroPiece, anneePiece: $anneePiece, garantie: $garantie, autres: $autres, imagePiece: $imagePiece, dateDemande: $dateDemande, etatDemande: $etatDemande, createdAt: $createdAt, updatedAt: $updatedAt, client: $client, article: $article, typeEngin: $typeEngin, marque: $marque, interventions: $interventions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemandeInfoImpl &&
            (identical(other.demandeId, demandeId) ||
                other.demandeId == demandeId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.typeEnginId, typeEnginId) ||
                other.typeEnginId == typeEnginId) &&
            (identical(other.marqueId, marqueId) ||
                other.marqueId == marqueId) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.descriptionPiece, descriptionPiece) ||
                other.descriptionPiece == descriptionPiece) &&
            (identical(other.modelePiece, modelePiece) ||
                other.modelePiece == modelePiece) &&
            (identical(other.numeroPiece, numeroPiece) ||
                other.numeroPiece == numeroPiece) &&
            (identical(other.anneePiece, anneePiece) ||
                other.anneePiece == anneePiece) &&
            (identical(other.garantie, garantie) ||
                other.garantie == garantie) &&
            (identical(other.autres, autres) || other.autres == autres) &&
            (identical(other.imagePiece, imagePiece) ||
                other.imagePiece == imagePiece) &&
            (identical(other.dateDemande, dateDemande) ||
                other.dateDemande == dateDemande) &&
            (identical(other.etatDemande, etatDemande) ||
                other.etatDemande == etatDemande) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.typeEngin, typeEngin) ||
                other.typeEngin == typeEngin) &&
            (identical(other.marque, marque) || other.marque == marque) &&
            const DeepCollectionEquality()
                .equals(other._interventions, _interventions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        demandeId,
        clientId,
        articleId,
        typeEnginId,
        marqueId,
        reference,
        descriptionPiece,
        modelePiece,
        numeroPiece,
        anneePiece,
        garantie,
        autres,
        imagePiece,
        dateDemande,
        etatDemande,
        createdAt,
        updatedAt,
        client,
        article,
        typeEngin,
        marque,
        const DeepCollectionEquality().hash(_interventions)
      ]);

  /// Create a copy of DemandeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DemandeInfoImplCopyWith<_$DemandeInfoImpl> get copyWith =>
      __$$DemandeInfoImplCopyWithImpl<_$DemandeInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DemandeInfoImplToJson(
      this,
    );
  }
}

abstract class _DemandeInfo implements DemandeInfo {
  const factory _DemandeInfo(
      {@JsonKey(name: 'demande_id') required final int demandeId,
      @JsonKey(name: 'client_id') required final int clientId,
      @JsonKey(name: 'article_id') required final int articleId,
      @JsonKey(name: 'type_engin_id') required final int typeEnginId,
      @JsonKey(name: 'marque_id') required final int marqueId,
      @JsonKey(name: 'reference') required final String reference,
      @JsonKey(name: 'description_piece')
      required final String descriptionPiece,
      @JsonKey(name: 'modele_piece') final String? modelePiece,
      @JsonKey(name: 'numero_piece') final String? numeroPiece,
      @JsonKey(name: 'annee_piece') final String? anneePiece,
      @JsonKey(name: 'garantie') required final int garantie,
      @JsonKey(name: 'autres') final String? autres,
      @JsonKey(name: 'image_piece') final String? imagePiece,
      @JsonKey(name: 'date_demande') required final DateTime dateDemande,
      @JsonKey(name: 'etat_demande') required final int etatDemande,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'client') required final Client client,
      @JsonKey(name: 'article') required final Article article,
      @JsonKey(name: 'type_engin') required final EnginType typeEngin,
      @JsonKey(name: 'marque') required final Make marque,
      @JsonKey(name: 'interventions')
      required final List<Intervention> interventions}) = _$DemandeInfoImpl;

  factory _DemandeInfo.fromJson(Map<String, dynamic> json) =
      _$DemandeInfoImpl.fromJson;

  @override
  @JsonKey(name: 'demande_id')
  int get demandeId;
  @override
  @JsonKey(name: 'client_id')
  int get clientId;
  @override
  @JsonKey(name: 'article_id')
  int get articleId;
  @override
  @JsonKey(name: 'type_engin_id')
  int get typeEnginId;
  @override
  @JsonKey(name: 'marque_id')
  int get marqueId;
  @override
  @JsonKey(name: 'reference')
  String get reference;
  @override
  @JsonKey(name: 'description_piece')
  String get descriptionPiece;
  @override
  @JsonKey(name: 'modele_piece')
  String? get modelePiece;
  @override
  @JsonKey(name: 'numero_piece')
  String? get numeroPiece;
  @override
  @JsonKey(name: 'annee_piece')
  String? get anneePiece;
  @override
  @JsonKey(name: 'garantie')
  int get garantie;
  @override
  @JsonKey(name: 'autres')
  String? get autres;
  @override
  @JsonKey(name: 'image_piece')
  String? get imagePiece;
  @override
  @JsonKey(name: 'date_demande')
  DateTime get dateDemande;
  @override
  @JsonKey(name: 'etat_demande')
  int get etatDemande;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'client')
  Client get client;
  @override
  @JsonKey(name: 'article')
  Article get article;
  @override
  @JsonKey(name: 'type_engin')
  EnginType get typeEngin;
  @override
  @JsonKey(name: 'marque')
  Make get marque;
  @override
  @JsonKey(name: 'interventions')
  List<Intervention> get interventions;

  /// Create a copy of DemandeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DemandeInfoImplCopyWith<_$DemandeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
