// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'publicite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Publicite _$PubliciteFromJson(Map<String, dynamic> json) {
  return _Publicite.fromJson(json);
}

/// @nodoc
mixin _$Publicite {
  @JsonKey(name: 'publicite_id')
  int get publiciteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'libelle')
  String get libelle => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner')
  String get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'nom_annonceur')
  String get nomAnnonceur => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_annonceur')
  String get contactAnnonceur => throw _privateConstructorUsedError;
  @JsonKey(name: 'siteweb_annonceur')
  String? get sitewebAnnonceur => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_debut', fromJson: _dateTimeFromJson)
  DateTime get dateDebut => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_fin', fromJson: _dateTimeFromJson)
  DateTime get dateFin => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'priorite')
  int get priorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PubliciteCopyWith<Publicite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubliciteCopyWith<$Res> {
  factory $PubliciteCopyWith(Publicite value, $Res Function(Publicite) then) =
      _$PubliciteCopyWithImpl<$Res, Publicite>;
  @useResult
  $Res call(
      {@JsonKey(name: 'publicite_id') int publiciteId,
      @JsonKey(name: 'libelle') String libelle,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'banner') String banner,
      @JsonKey(name: 'nom_annonceur') String nomAnnonceur,
      @JsonKey(name: 'contact_annonceur') String contactAnnonceur,
      @JsonKey(name: 'siteweb_annonceur') String? sitewebAnnonceur,
      @JsonKey(name: 'date_debut', fromJson: _dateTimeFromJson)
      DateTime dateDebut,
      @JsonKey(name: 'date_fin', fromJson: _dateTimeFromJson) DateTime dateFin,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'priorite') int priorite,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
      DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)
      DateTime updatedAt});
}

/// @nodoc
class _$PubliciteCopyWithImpl<$Res, $Val extends Publicite>
    implements $PubliciteCopyWith<$Res> {
  _$PubliciteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publiciteId = null,
    Object? libelle = null,
    Object? description = null,
    Object? banner = null,
    Object? nomAnnonceur = null,
    Object? contactAnnonceur = null,
    Object? sitewebAnnonceur = freezed,
    Object? dateDebut = null,
    Object? dateFin = null,
    Object? status = null,
    Object? priorite = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      publiciteId: null == publiciteId
          ? _value.publiciteId
          : publiciteId // ignore: cast_nullable_to_non_nullable
              as int,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      nomAnnonceur: null == nomAnnonceur
          ? _value.nomAnnonceur
          : nomAnnonceur // ignore: cast_nullable_to_non_nullable
              as String,
      contactAnnonceur: null == contactAnnonceur
          ? _value.contactAnnonceur
          : contactAnnonceur // ignore: cast_nullable_to_non_nullable
              as String,
      sitewebAnnonceur: freezed == sitewebAnnonceur
          ? _value.sitewebAnnonceur
          : sitewebAnnonceur // ignore: cast_nullable_to_non_nullable
              as String?,
      dateDebut: null == dateDebut
          ? _value.dateDebut
          : dateDebut // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateFin: null == dateFin
          ? _value.dateFin
          : dateFin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      priorite: null == priorite
          ? _value.priorite
          : priorite // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubliciteImplCopyWith<$Res>
    implements $PubliciteCopyWith<$Res> {
  factory _$$PubliciteImplCopyWith(
          _$PubliciteImpl value, $Res Function(_$PubliciteImpl) then) =
      __$$PubliciteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'publicite_id') int publiciteId,
      @JsonKey(name: 'libelle') String libelle,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'banner') String banner,
      @JsonKey(name: 'nom_annonceur') String nomAnnonceur,
      @JsonKey(name: 'contact_annonceur') String contactAnnonceur,
      @JsonKey(name: 'siteweb_annonceur') String? sitewebAnnonceur,
      @JsonKey(name: 'date_debut', fromJson: _dateTimeFromJson)
      DateTime dateDebut,
      @JsonKey(name: 'date_fin', fromJson: _dateTimeFromJson) DateTime dateFin,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'priorite') int priorite,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
      DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)
      DateTime updatedAt});
}

/// @nodoc
class __$$PubliciteImplCopyWithImpl<$Res>
    extends _$PubliciteCopyWithImpl<$Res, _$PubliciteImpl>
    implements _$$PubliciteImplCopyWith<$Res> {
  __$$PubliciteImplCopyWithImpl(
      _$PubliciteImpl _value, $Res Function(_$PubliciteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publiciteId = null,
    Object? libelle = null,
    Object? description = null,
    Object? banner = null,
    Object? nomAnnonceur = null,
    Object? contactAnnonceur = null,
    Object? sitewebAnnonceur = freezed,
    Object? dateDebut = null,
    Object? dateFin = null,
    Object? status = null,
    Object? priorite = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PubliciteImpl(
      publiciteId: null == publiciteId
          ? _value.publiciteId
          : publiciteId // ignore: cast_nullable_to_non_nullable
              as int,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      nomAnnonceur: null == nomAnnonceur
          ? _value.nomAnnonceur
          : nomAnnonceur // ignore: cast_nullable_to_non_nullable
              as String,
      contactAnnonceur: null == contactAnnonceur
          ? _value.contactAnnonceur
          : contactAnnonceur // ignore: cast_nullable_to_non_nullable
              as String,
      sitewebAnnonceur: freezed == sitewebAnnonceur
          ? _value.sitewebAnnonceur
          : sitewebAnnonceur // ignore: cast_nullable_to_non_nullable
              as String?,
      dateDebut: null == dateDebut
          ? _value.dateDebut
          : dateDebut // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateFin: null == dateFin
          ? _value.dateFin
          : dateFin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      priorite: null == priorite
          ? _value.priorite
          : priorite // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PubliciteImpl implements _Publicite {
  const _$PubliciteImpl(
      {@JsonKey(name: 'publicite_id') required this.publiciteId,
      @JsonKey(name: 'libelle') required this.libelle,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'banner') required this.banner,
      @JsonKey(name: 'nom_annonceur') required this.nomAnnonceur,
      @JsonKey(name: 'contact_annonceur') required this.contactAnnonceur,
      @JsonKey(name: 'siteweb_annonceur') this.sitewebAnnonceur,
      @JsonKey(name: 'date_debut', fromJson: _dateTimeFromJson)
      required this.dateDebut,
      @JsonKey(name: 'date_fin', fromJson: _dateTimeFromJson)
      required this.dateFin,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'priorite') required this.priorite,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
      required this.createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)
      required this.updatedAt});

  factory _$PubliciteImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubliciteImplFromJson(json);

  @override
  @JsonKey(name: 'publicite_id')
  final int publiciteId;
  @override
  @JsonKey(name: 'libelle')
  final String libelle;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'banner')
  final String banner;
  @override
  @JsonKey(name: 'nom_annonceur')
  final String nomAnnonceur;
  @override
  @JsonKey(name: 'contact_annonceur')
  final String contactAnnonceur;
  @override
  @JsonKey(name: 'siteweb_annonceur')
  final String? sitewebAnnonceur;
  @override
  @JsonKey(name: 'date_debut', fromJson: _dateTimeFromJson)
  final DateTime dateDebut;
  @override
  @JsonKey(name: 'date_fin', fromJson: _dateTimeFromJson)
  final DateTime dateFin;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'priorite')
  final int priorite;
  @override
  @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Publicite(publiciteId: $publiciteId, libelle: $libelle, description: $description, banner: $banner, nomAnnonceur: $nomAnnonceur, contactAnnonceur: $contactAnnonceur, sitewebAnnonceur: $sitewebAnnonceur, dateDebut: $dateDebut, dateFin: $dateFin, status: $status, priorite: $priorite, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubliciteImpl &&
            (identical(other.publiciteId, publiciteId) ||
                other.publiciteId == publiciteId) &&
            (identical(other.libelle, libelle) || other.libelle == libelle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.nomAnnonceur, nomAnnonceur) ||
                other.nomAnnonceur == nomAnnonceur) &&
            (identical(other.contactAnnonceur, contactAnnonceur) ||
                other.contactAnnonceur == contactAnnonceur) &&
            (identical(other.sitewebAnnonceur, sitewebAnnonceur) ||
                other.sitewebAnnonceur == sitewebAnnonceur) &&
            (identical(other.dateDebut, dateDebut) ||
                other.dateDebut == dateDebut) &&
            (identical(other.dateFin, dateFin) || other.dateFin == dateFin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priorite, priorite) ||
                other.priorite == priorite) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      publiciteId,
      libelle,
      description,
      banner,
      nomAnnonceur,
      contactAnnonceur,
      sitewebAnnonceur,
      dateDebut,
      dateFin,
      status,
      priorite,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PubliciteImplCopyWith<_$PubliciteImpl> get copyWith =>
      __$$PubliciteImplCopyWithImpl<_$PubliciteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubliciteImplToJson(
      this,
    );
  }
}

abstract class _Publicite implements Publicite {
  const factory _Publicite(
      {@JsonKey(name: 'publicite_id') required final int publiciteId,
      @JsonKey(name: 'libelle') required final String libelle,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'banner') required final String banner,
      @JsonKey(name: 'nom_annonceur') required final String nomAnnonceur,
      @JsonKey(name: 'contact_annonceur')
      required final String contactAnnonceur,
      @JsonKey(name: 'siteweb_annonceur') final String? sitewebAnnonceur,
      @JsonKey(name: 'date_debut', fromJson: _dateTimeFromJson)
      required final DateTime dateDebut,
      @JsonKey(name: 'date_fin', fromJson: _dateTimeFromJson)
      required final DateTime dateFin,
      @JsonKey(name: 'status') required final String status,
      @JsonKey(name: 'priorite') required final int priorite,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
      required final DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)
      required final DateTime updatedAt}) = _$PubliciteImpl;

  factory _Publicite.fromJson(Map<String, dynamic> json) =
      _$PubliciteImpl.fromJson;

  @override
  @JsonKey(name: 'publicite_id')
  int get publiciteId;
  @override
  @JsonKey(name: 'libelle')
  String get libelle;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'banner')
  String get banner;
  @override
  @JsonKey(name: 'nom_annonceur')
  String get nomAnnonceur;
  @override
  @JsonKey(name: 'contact_annonceur')
  String get contactAnnonceur;
  @override
  @JsonKey(name: 'siteweb_annonceur')
  String? get sitewebAnnonceur;
  @override
  @JsonKey(name: 'date_debut', fromJson: _dateTimeFromJson)
  DateTime get dateDebut;
  @override
  @JsonKey(name: 'date_fin', fromJson: _dateTimeFromJson)
  DateTime get dateFin;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'priorite')
  int get priorite;
  @override
  @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PubliciteImplCopyWith<_$PubliciteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
