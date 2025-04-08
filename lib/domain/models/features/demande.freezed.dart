// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demande.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Demande _$DemandeFromJson(Map<String, dynamic> json) {
  return _Demande.fromJson(json);
}

/// @nodoc
mixin _$Demande {
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

  /// Serializes this Demande to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Demande
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DemandeCopyWith<Demande> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemandeCopyWith<$Res> {
  factory $DemandeCopyWith(Demande value, $Res Function(Demande) then) =
      _$DemandeCopyWithImpl<$Res, Demande>;
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
      @JsonKey(name: 'marque') Make marque});

  $ClientCopyWith<$Res> get client;
  $ArticleCopyWith<$Res> get article;
  $EnginTypeCopyWith<$Res> get typeEngin;
  $MakeCopyWith<$Res> get marque;
}

/// @nodoc
class _$DemandeCopyWithImpl<$Res, $Val extends Demande>
    implements $DemandeCopyWith<$Res> {
  _$DemandeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Demande
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
    ) as $Val);
  }

  /// Create a copy of Demande
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  /// Create a copy of Demande
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res> get article {
    return $ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value) as $Val);
    });
  }

  /// Create a copy of Demande
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EnginTypeCopyWith<$Res> get typeEngin {
    return $EnginTypeCopyWith<$Res>(_value.typeEngin, (value) {
      return _then(_value.copyWith(typeEngin: value) as $Val);
    });
  }

  /// Create a copy of Demande
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
abstract class _$$DemandeImplCopyWith<$Res> implements $DemandeCopyWith<$Res> {
  factory _$$DemandeImplCopyWith(
          _$DemandeImpl value, $Res Function(_$DemandeImpl) then) =
      __$$DemandeImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'marque') Make marque});

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
class __$$DemandeImplCopyWithImpl<$Res>
    extends _$DemandeCopyWithImpl<$Res, _$DemandeImpl>
    implements _$$DemandeImplCopyWith<$Res> {
  __$$DemandeImplCopyWithImpl(
      _$DemandeImpl _value, $Res Function(_$DemandeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Demande
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
  }) {
    return _then(_$DemandeImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemandeImpl implements _Demande {
  const _$DemandeImpl(
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
      @JsonKey(name: 'marque') required this.marque});

  factory _$DemandeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DemandeImplFromJson(json);

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

  @override
  String toString() {
    return 'Demande(demandeId: $demandeId, clientId: $clientId, articleId: $articleId, typeEnginId: $typeEnginId, marqueId: $marqueId, reference: $reference, descriptionPiece: $descriptionPiece, modelePiece: $modelePiece, numeroPiece: $numeroPiece, anneePiece: $anneePiece, garantie: $garantie, autres: $autres, imagePiece: $imagePiece, dateDemande: $dateDemande, etatDemande: $etatDemande, createdAt: $createdAt, updatedAt: $updatedAt, client: $client, article: $article, typeEngin: $typeEngin, marque: $marque)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemandeImpl &&
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
            (identical(other.marque, marque) || other.marque == marque));
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
        marque
      ]);

  /// Create a copy of Demande
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DemandeImplCopyWith<_$DemandeImpl> get copyWith =>
      __$$DemandeImplCopyWithImpl<_$DemandeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DemandeImplToJson(
      this,
    );
  }
}

abstract class _Demande implements Demande {
  const factory _Demande(
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
      @JsonKey(name: 'marque') required final Make marque}) = _$DemandeImpl;

  factory _Demande.fromJson(Map<String, dynamic> json) = _$DemandeImpl.fromJson;

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

  /// Create a copy of Demande
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DemandeImplCopyWith<_$DemandeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
