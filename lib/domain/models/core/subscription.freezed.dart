// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  @JsonKey(name: 'souscription_id')
  int get souscriptionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'abonnement_id')
  int get abonnementId => throw _privateConstructorUsedError;
  @JsonKey(name: 'partenaire_id')
  int get partenaireId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_souscription')
  DateTime get dateSouscription => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_debut')
  DateTime? get dateDebut => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_fin')
  DateTime? get dateFin => throw _privateConstructorUsedError;
  @JsonKey(name: 'statut')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Subscription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call(
      {@JsonKey(name: 'souscription_id') int souscriptionId,
      @JsonKey(name: 'abonnement_id') int abonnementId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'date_souscription') DateTime dateSouscription,
      @JsonKey(name: 'date_debut') DateTime? dateDebut,
      @JsonKey(name: 'date_fin') DateTime? dateFin,
      @JsonKey(name: 'statut') int status,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? souscriptionId = null,
    Object? abonnementId = null,
    Object? partenaireId = null,
    Object? dateSouscription = null,
    Object? dateDebut = freezed,
    Object? dateFin = freezed,
    Object? status = null,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      souscriptionId: null == souscriptionId
          ? _value.souscriptionId
          : souscriptionId // ignore: cast_nullable_to_non_nullable
              as int,
      abonnementId: null == abonnementId
          ? _value.abonnementId
          : abonnementId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      dateSouscription: null == dateSouscription
          ? _value.dateSouscription
          : dateSouscription // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateDebut: freezed == dateDebut
          ? _value.dateDebut
          : dateDebut // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateFin: freezed == dateFin
          ? _value.dateFin
          : dateFin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
          _$SubscriptionImpl value, $Res Function(_$SubscriptionImpl) then) =
      __$$SubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'souscription_id') int souscriptionId,
      @JsonKey(name: 'abonnement_id') int abonnementId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'date_souscription') DateTime dateSouscription,
      @JsonKey(name: 'date_debut') DateTime? dateDebut,
      @JsonKey(name: 'date_fin') DateTime? dateFin,
      @JsonKey(name: 'statut') int status,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
      _$SubscriptionImpl _value, $Res Function(_$SubscriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? souscriptionId = null,
    Object? abonnementId = null,
    Object? partenaireId = null,
    Object? dateSouscription = null,
    Object? dateDebut = freezed,
    Object? dateFin = freezed,
    Object? status = null,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$SubscriptionImpl(
      souscriptionId: null == souscriptionId
          ? _value.souscriptionId
          : souscriptionId // ignore: cast_nullable_to_non_nullable
              as int,
      abonnementId: null == abonnementId
          ? _value.abonnementId
          : abonnementId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      dateSouscription: null == dateSouscription
          ? _value.dateSouscription
          : dateSouscription // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateDebut: freezed == dateDebut
          ? _value.dateDebut
          : dateDebut // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateFin: freezed == dateFin
          ? _value.dateFin
          : dateFin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionImpl implements _Subscription {
  const _$SubscriptionImpl(
      {@JsonKey(name: 'souscription_id') required this.souscriptionId,
      @JsonKey(name: 'abonnement_id') required this.abonnementId,
      @JsonKey(name: 'partenaire_id') required this.partenaireId,
      @JsonKey(name: 'date_souscription') required this.dateSouscription,
      @JsonKey(name: 'date_debut') required this.dateDebut,
      @JsonKey(name: 'date_fin') required this.dateFin,
      @JsonKey(name: 'statut') required this.status,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  @override
  @JsonKey(name: 'souscription_id')
  final int souscriptionId;
  @override
  @JsonKey(name: 'abonnement_id')
  final int abonnementId;
  @override
  @JsonKey(name: 'partenaire_id')
  final int partenaireId;
  @override
  @JsonKey(name: 'date_souscription')
  final DateTime dateSouscription;
  @override
  @JsonKey(name: 'date_debut')
  final DateTime? dateDebut;
  @override
  @JsonKey(name: 'date_fin')
  final DateTime? dateFin;
  @override
  @JsonKey(name: 'statut')
  final int status;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'Subscription(souscriptionId: $souscriptionId, abonnementId: $abonnementId, partenaireId: $partenaireId, dateSouscription: $dateSouscription, dateDebut: $dateDebut, dateFin: $dateFin, status: $status, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionImpl &&
            (identical(other.souscriptionId, souscriptionId) ||
                other.souscriptionId == souscriptionId) &&
            (identical(other.abonnementId, abonnementId) ||
                other.abonnementId == abonnementId) &&
            (identical(other.partenaireId, partenaireId) ||
                other.partenaireId == partenaireId) &&
            (identical(other.dateSouscription, dateSouscription) ||
                other.dateSouscription == dateSouscription) &&
            (identical(other.dateDebut, dateDebut) ||
                other.dateDebut == dateDebut) &&
            (identical(other.dateFin, dateFin) || other.dateFin == dateFin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      souscriptionId,
      abonnementId,
      partenaireId,
      dateSouscription,
      dateDebut,
      dateFin,
      status,
      updatedAt,
      createdAt);

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<_$SubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionImplToJson(
      this,
    );
  }
}

abstract class _Subscription implements Subscription {
  const factory _Subscription(
          {@JsonKey(name: 'souscription_id') required final int souscriptionId,
          @JsonKey(name: 'abonnement_id') required final int abonnementId,
          @JsonKey(name: 'partenaire_id') required final int partenaireId,
          @JsonKey(name: 'date_souscription')
          required final DateTime dateSouscription,
          @JsonKey(name: 'date_debut') required final DateTime? dateDebut,
          @JsonKey(name: 'date_fin') required final DateTime? dateFin,
          @JsonKey(name: 'statut') required final int status,
          @JsonKey(name: 'updated_at') required final String? updatedAt,
          @JsonKey(name: 'created_at') required final String? createdAt}) =
      _$SubscriptionImpl;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  @JsonKey(name: 'souscription_id')
  int get souscriptionId;
  @override
  @JsonKey(name: 'abonnement_id')
  int get abonnementId;
  @override
  @JsonKey(name: 'partenaire_id')
  int get partenaireId;
  @override
  @JsonKey(name: 'date_souscription')
  DateTime get dateSouscription;
  @override
  @JsonKey(name: 'date_debut')
  DateTime? get dateDebut;
  @override
  @JsonKey(name: 'date_fin')
  DateTime? get dateFin;
  @override
  @JsonKey(name: 'statut')
  int get status;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
