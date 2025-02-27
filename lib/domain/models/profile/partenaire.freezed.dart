// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partenaire.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Partenaire _$PartenaireFromJson(Map<String, dynamic> json) {
  return _Partenaire.fromJson(json);
}

/// @nodoc
mixin _$Partenaire {
  @JsonKey(name: 'partenaire_id')
  int get partenaireId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pays_id')
  int get paysId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_id')
  int get typeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'raison_sociale')
  String get raisonSociale => throw _privateConstructorUsedError;
  @JsonKey(name: 'telephone_partenaire')
  String get telephonePartenaire => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_partenaire')
  String get emailPartenaire => throw _privateConstructorUsedError;
  @JsonKey(name: 'ville_partenaire')
  String get villePartenaire => throw _privateConstructorUsedError;
  @JsonKey(name: 'quartier_partenaire')
  String get quartierPartenaire => throw _privateConstructorUsedError;
  @JsonKey(name: 'adresses_partenaire')
  List<Address>? get adressesPartenaire => throw _privateConstructorUsedError;

  /// Serializes this Partenaire to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Partenaire
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartenaireCopyWith<Partenaire> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartenaireCopyWith<$Res> {
  factory $PartenaireCopyWith(
          Partenaire value, $Res Function(Partenaire) then) =
      _$PartenaireCopyWithImpl<$Res, Partenaire>;
  @useResult
  $Res call(
      {@JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'pays_id') int paysId,
      @JsonKey(name: 'type_id') int typeId,
      @JsonKey(name: 'raison_sociale') String raisonSociale,
      @JsonKey(name: 'telephone_partenaire') String telephonePartenaire,
      @JsonKey(name: 'email_partenaire') String emailPartenaire,
      @JsonKey(name: 'ville_partenaire') String villePartenaire,
      @JsonKey(name: 'quartier_partenaire') String quartierPartenaire,
      @JsonKey(name: 'adresses_partenaire') List<Address>? adressesPartenaire});
}

/// @nodoc
class _$PartenaireCopyWithImpl<$Res, $Val extends Partenaire>
    implements $PartenaireCopyWith<$Res> {
  _$PartenaireCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Partenaire
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partenaireId = null,
    Object? userId = null,
    Object? paysId = null,
    Object? typeId = null,
    Object? raisonSociale = null,
    Object? telephonePartenaire = null,
    Object? emailPartenaire = null,
    Object? villePartenaire = null,
    Object? quartierPartenaire = null,
    Object? adressesPartenaire = freezed,
  }) {
    return _then(_value.copyWith(
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paysId: null == paysId
          ? _value.paysId
          : paysId // ignore: cast_nullable_to_non_nullable
              as int,
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      raisonSociale: null == raisonSociale
          ? _value.raisonSociale
          : raisonSociale // ignore: cast_nullable_to_non_nullable
              as String,
      telephonePartenaire: null == telephonePartenaire
          ? _value.telephonePartenaire
          : telephonePartenaire // ignore: cast_nullable_to_non_nullable
              as String,
      emailPartenaire: null == emailPartenaire
          ? _value.emailPartenaire
          : emailPartenaire // ignore: cast_nullable_to_non_nullable
              as String,
      villePartenaire: null == villePartenaire
          ? _value.villePartenaire
          : villePartenaire // ignore: cast_nullable_to_non_nullable
              as String,
      quartierPartenaire: null == quartierPartenaire
          ? _value.quartierPartenaire
          : quartierPartenaire // ignore: cast_nullable_to_non_nullable
              as String,
      adressesPartenaire: freezed == adressesPartenaire
          ? _value.adressesPartenaire
          : adressesPartenaire // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartenaireImplCopyWith<$Res>
    implements $PartenaireCopyWith<$Res> {
  factory _$$PartenaireImplCopyWith(
          _$PartenaireImpl value, $Res Function(_$PartenaireImpl) then) =
      __$$PartenaireImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'pays_id') int paysId,
      @JsonKey(name: 'type_id') int typeId,
      @JsonKey(name: 'raison_sociale') String raisonSociale,
      @JsonKey(name: 'telephone_partenaire') String telephonePartenaire,
      @JsonKey(name: 'email_partenaire') String emailPartenaire,
      @JsonKey(name: 'ville_partenaire') String villePartenaire,
      @JsonKey(name: 'quartier_partenaire') String quartierPartenaire,
      @JsonKey(name: 'adresses_partenaire') List<Address>? adressesPartenaire});
}

/// @nodoc
class __$$PartenaireImplCopyWithImpl<$Res>
    extends _$PartenaireCopyWithImpl<$Res, _$PartenaireImpl>
    implements _$$PartenaireImplCopyWith<$Res> {
  __$$PartenaireImplCopyWithImpl(
      _$PartenaireImpl _value, $Res Function(_$PartenaireImpl) _then)
      : super(_value, _then);

  /// Create a copy of Partenaire
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partenaireId = null,
    Object? userId = null,
    Object? paysId = null,
    Object? typeId = null,
    Object? raisonSociale = null,
    Object? telephonePartenaire = null,
    Object? emailPartenaire = null,
    Object? villePartenaire = null,
    Object? quartierPartenaire = null,
    Object? adressesPartenaire = freezed,
  }) {
    return _then(_$PartenaireImpl(
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paysId: null == paysId
          ? _value.paysId
          : paysId // ignore: cast_nullable_to_non_nullable
              as int,
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      raisonSociale: null == raisonSociale
          ? _value.raisonSociale
          : raisonSociale // ignore: cast_nullable_to_non_nullable
              as String,
      telephonePartenaire: null == telephonePartenaire
          ? _value.telephonePartenaire
          : telephonePartenaire // ignore: cast_nullable_to_non_nullable
              as String,
      emailPartenaire: null == emailPartenaire
          ? _value.emailPartenaire
          : emailPartenaire // ignore: cast_nullable_to_non_nullable
              as String,
      villePartenaire: null == villePartenaire
          ? _value.villePartenaire
          : villePartenaire // ignore: cast_nullable_to_non_nullable
              as String,
      quartierPartenaire: null == quartierPartenaire
          ? _value.quartierPartenaire
          : quartierPartenaire // ignore: cast_nullable_to_non_nullable
              as String,
      adressesPartenaire: freezed == adressesPartenaire
          ? _value._adressesPartenaire
          : adressesPartenaire // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartenaireImpl implements _Partenaire {
  const _$PartenaireImpl(
      {@JsonKey(name: 'partenaire_id') required this.partenaireId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'pays_id') required this.paysId,
      @JsonKey(name: 'type_id') required this.typeId,
      @JsonKey(name: 'raison_sociale') required this.raisonSociale,
      @JsonKey(name: 'telephone_partenaire') required this.telephonePartenaire,
      @JsonKey(name: 'email_partenaire') required this.emailPartenaire,
      @JsonKey(name: 'ville_partenaire') required this.villePartenaire,
      @JsonKey(name: 'quartier_partenaire') required this.quartierPartenaire,
      @JsonKey(name: 'adresses_partenaire')
      final List<Address>? adressesPartenaire})
      : _adressesPartenaire = adressesPartenaire;

  factory _$PartenaireImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartenaireImplFromJson(json);

  @override
  @JsonKey(name: 'partenaire_id')
  final int partenaireId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'pays_id')
  final int paysId;
  @override
  @JsonKey(name: 'type_id')
  final int typeId;
  @override
  @JsonKey(name: 'raison_sociale')
  final String raisonSociale;
  @override
  @JsonKey(name: 'telephone_partenaire')
  final String telephonePartenaire;
  @override
  @JsonKey(name: 'email_partenaire')
  final String emailPartenaire;
  @override
  @JsonKey(name: 'ville_partenaire')
  final String villePartenaire;
  @override
  @JsonKey(name: 'quartier_partenaire')
  final String quartierPartenaire;
  final List<Address>? _adressesPartenaire;
  @override
  @JsonKey(name: 'adresses_partenaire')
  List<Address>? get adressesPartenaire {
    final value = _adressesPartenaire;
    if (value == null) return null;
    if (_adressesPartenaire is EqualUnmodifiableListView)
      return _adressesPartenaire;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Partenaire(partenaireId: $partenaireId, userId: $userId, paysId: $paysId, typeId: $typeId, raisonSociale: $raisonSociale, telephonePartenaire: $telephonePartenaire, emailPartenaire: $emailPartenaire, villePartenaire: $villePartenaire, quartierPartenaire: $quartierPartenaire, adressesPartenaire: $adressesPartenaire)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartenaireImpl &&
            (identical(other.partenaireId, partenaireId) ||
                other.partenaireId == partenaireId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.paysId, paysId) || other.paysId == paysId) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.raisonSociale, raisonSociale) ||
                other.raisonSociale == raisonSociale) &&
            (identical(other.telephonePartenaire, telephonePartenaire) ||
                other.telephonePartenaire == telephonePartenaire) &&
            (identical(other.emailPartenaire, emailPartenaire) ||
                other.emailPartenaire == emailPartenaire) &&
            (identical(other.villePartenaire, villePartenaire) ||
                other.villePartenaire == villePartenaire) &&
            (identical(other.quartierPartenaire, quartierPartenaire) ||
                other.quartierPartenaire == quartierPartenaire) &&
            const DeepCollectionEquality()
                .equals(other._adressesPartenaire, _adressesPartenaire));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      partenaireId,
      userId,
      paysId,
      typeId,
      raisonSociale,
      telephonePartenaire,
      emailPartenaire,
      villePartenaire,
      quartierPartenaire,
      const DeepCollectionEquality().hash(_adressesPartenaire));

  /// Create a copy of Partenaire
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartenaireImplCopyWith<_$PartenaireImpl> get copyWith =>
      __$$PartenaireImplCopyWithImpl<_$PartenaireImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartenaireImplToJson(
      this,
    );
  }
}

abstract class _Partenaire implements Partenaire {
  const factory _Partenaire(
      {@JsonKey(name: 'partenaire_id') required final int partenaireId,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'pays_id') required final int paysId,
      @JsonKey(name: 'type_id') required final int typeId,
      @JsonKey(name: 'raison_sociale') required final String raisonSociale,
      @JsonKey(name: 'telephone_partenaire')
      required final String telephonePartenaire,
      @JsonKey(name: 'email_partenaire') required final String emailPartenaire,
      @JsonKey(name: 'ville_partenaire') required final String villePartenaire,
      @JsonKey(name: 'quartier_partenaire')
      required final String quartierPartenaire,
      @JsonKey(name: 'adresses_partenaire')
      final List<Address>? adressesPartenaire}) = _$PartenaireImpl;

  factory _Partenaire.fromJson(Map<String, dynamic> json) =
      _$PartenaireImpl.fromJson;

  @override
  @JsonKey(name: 'partenaire_id')
  int get partenaireId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'pays_id')
  int get paysId;
  @override
  @JsonKey(name: 'type_id')
  int get typeId;
  @override
  @JsonKey(name: 'raison_sociale')
  String get raisonSociale;
  @override
  @JsonKey(name: 'telephone_partenaire')
  String get telephonePartenaire;
  @override
  @JsonKey(name: 'email_partenaire')
  String get emailPartenaire;
  @override
  @JsonKey(name: 'ville_partenaire')
  String get villePartenaire;
  @override
  @JsonKey(name: 'quartier_partenaire')
  String get quartierPartenaire;
  @override
  @JsonKey(name: 'adresses_partenaire')
  List<Address>? get adressesPartenaire;

  /// Create a copy of Partenaire
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartenaireImplCopyWith<_$PartenaireImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
