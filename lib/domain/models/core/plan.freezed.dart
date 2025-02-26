// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return _Plan.fromJson(json);
}

/// @nodoc
mixin _$Plan {
  @JsonKey(name: 'abonnement_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'libelle_abonnement')
  String get libelle => throw _privateConstructorUsedError;
  @JsonKey(name: 'montant_abonnement')
  int get montant => throw _privateConstructorUsedError;
  @JsonKey(name: 'duree_abonnement')
  int get duree => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_promo')
  int get isPromo => throw _privateConstructorUsedError;
  @JsonKey(name: 'montant_promotion')
  int get montantPromotion => throw _privateConstructorUsedError;
  @JsonKey(name: 'statut')
  int get statut => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Plan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanCopyWith<Plan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res, Plan>;
  @useResult
  $Res call(
      {@JsonKey(name: 'abonnement_id') int id,
      @JsonKey(name: 'libelle_abonnement') String libelle,
      @JsonKey(name: 'montant_abonnement') int montant,
      @JsonKey(name: 'duree_abonnement') int duree,
      @JsonKey(name: 'is_promo') int isPromo,
      @JsonKey(name: 'montant_promotion') int montantPromotion,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$PlanCopyWithImpl<$Res, $Val extends Plan>
    implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
    Object? montant = null,
    Object? duree = null,
    Object? isPromo = null,
    Object? montantPromotion = null,
    Object? statut = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
      montant: null == montant
          ? _value.montant
          : montant // ignore: cast_nullable_to_non_nullable
              as int,
      duree: null == duree
          ? _value.duree
          : duree // ignore: cast_nullable_to_non_nullable
              as int,
      isPromo: null == isPromo
          ? _value.isPromo
          : isPromo // ignore: cast_nullable_to_non_nullable
              as int,
      montantPromotion: null == montantPromotion
          ? _value.montantPromotion
          : montantPromotion // ignore: cast_nullable_to_non_nullable
              as int,
      statut: null == statut
          ? _value.statut
          : statut // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PlanImplCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$$PlanImplCopyWith(
          _$PlanImpl value, $Res Function(_$PlanImpl) then) =
      __$$PlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'abonnement_id') int id,
      @JsonKey(name: 'libelle_abonnement') String libelle,
      @JsonKey(name: 'montant_abonnement') int montant,
      @JsonKey(name: 'duree_abonnement') int duree,
      @JsonKey(name: 'is_promo') int isPromo,
      @JsonKey(name: 'montant_promotion') int montantPromotion,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$PlanImplCopyWithImpl<$Res>
    extends _$PlanCopyWithImpl<$Res, _$PlanImpl>
    implements _$$PlanImplCopyWith<$Res> {
  __$$PlanImplCopyWithImpl(_$PlanImpl _value, $Res Function(_$PlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
    Object? montant = null,
    Object? duree = null,
    Object? isPromo = null,
    Object? montantPromotion = null,
    Object? statut = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PlanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
      montant: null == montant
          ? _value.montant
          : montant // ignore: cast_nullable_to_non_nullable
              as int,
      duree: null == duree
          ? _value.duree
          : duree // ignore: cast_nullable_to_non_nullable
              as int,
      isPromo: null == isPromo
          ? _value.isPromo
          : isPromo // ignore: cast_nullable_to_non_nullable
              as int,
      montantPromotion: null == montantPromotion
          ? _value.montantPromotion
          : montantPromotion // ignore: cast_nullable_to_non_nullable
              as int,
      statut: null == statut
          ? _value.statut
          : statut // ignore: cast_nullable_to_non_nullable
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
class _$PlanImpl implements _Plan {
  const _$PlanImpl(
      {@JsonKey(name: 'abonnement_id') required this.id,
      @JsonKey(name: 'libelle_abonnement') required this.libelle,
      @JsonKey(name: 'montant_abonnement') required this.montant,
      @JsonKey(name: 'duree_abonnement') required this.duree,
      @JsonKey(name: 'is_promo') required this.isPromo,
      @JsonKey(name: 'montant_promotion') required this.montantPromotion,
      @JsonKey(name: 'statut') required this.statut,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$PlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanImplFromJson(json);

  @override
  @JsonKey(name: 'abonnement_id')
  final int id;
  @override
  @JsonKey(name: 'libelle_abonnement')
  final String libelle;
  @override
  @JsonKey(name: 'montant_abonnement')
  final int montant;
  @override
  @JsonKey(name: 'duree_abonnement')
  final int duree;
  @override
  @JsonKey(name: 'is_promo')
  final int isPromo;
  @override
  @JsonKey(name: 'montant_promotion')
  final int montantPromotion;
  @override
  @JsonKey(name: 'statut')
  final int statut;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Plan(id: $id, libelle: $libelle, montant: $montant, duree: $duree, isPromo: $isPromo, montantPromotion: $montantPromotion, statut: $statut, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.libelle, libelle) || other.libelle == libelle) &&
            (identical(other.montant, montant) || other.montant == montant) &&
            (identical(other.duree, duree) || other.duree == duree) &&
            (identical(other.isPromo, isPromo) || other.isPromo == isPromo) &&
            (identical(other.montantPromotion, montantPromotion) ||
                other.montantPromotion == montantPromotion) &&
            (identical(other.statut, statut) || other.statut == statut) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, libelle, montant, duree,
      isPromo, montantPromotion, statut, createdAt, updatedAt);

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      __$$PlanImplCopyWithImpl<_$PlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanImplToJson(
      this,
    );
  }
}

abstract class _Plan implements Plan {
  const factory _Plan(
      {@JsonKey(name: 'abonnement_id') required final int id,
      @JsonKey(name: 'libelle_abonnement') required final String libelle,
      @JsonKey(name: 'montant_abonnement') required final int montant,
      @JsonKey(name: 'duree_abonnement') required final int duree,
      @JsonKey(name: 'is_promo') required final int isPromo,
      @JsonKey(name: 'montant_promotion') required final int montantPromotion,
      @JsonKey(name: 'statut') required final int statut,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
      required final DateTime updatedAt}) = _$PlanImpl;

  factory _Plan.fromJson(Map<String, dynamic> json) = _$PlanImpl.fromJson;

  @override
  @JsonKey(name: 'abonnement_id')
  int get id;
  @override
  @JsonKey(name: 'libelle_abonnement')
  String get libelle;
  @override
  @JsonKey(name: 'montant_abonnement')
  int get montant;
  @override
  @JsonKey(name: 'duree_abonnement')
  int get duree;
  @override
  @JsonKey(name: 'is_promo')
  int get isPromo;
  @override
  @JsonKey(name: 'montant_promotion')
  int get montantPromotion;
  @override
  @JsonKey(name: 'statut')
  int get statut;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
