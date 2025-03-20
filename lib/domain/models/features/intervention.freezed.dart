// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intervention.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Intervention _$InterventionFromJson(Map<String, dynamic> json) {
  return _Intervention.fromJson(json);
}

/// @nodoc
mixin _$Intervention {
  @JsonKey(name: 'intervention_id')
  int get interventionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'demande_id')
  int get demandeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  int get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'partenaire_id')
  int get partenaireId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateheure_intervention')
  DateTime get dateheureIntervention => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'partenaire')
  Partenaire get partenaire => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterventionCopyWith<Intervention> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterventionCopyWith<$Res> {
  factory $InterventionCopyWith(
          Intervention value, $Res Function(Intervention) then) =
      _$InterventionCopyWithImpl<$Res, Intervention>;
  @useResult
  $Res call(
      {@JsonKey(name: 'intervention_id') int interventionId,
      @JsonKey(name: 'demande_id') int demandeId,
      @JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'dateheure_intervention') DateTime dateheureIntervention,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'partenaire') Partenaire partenaire});

  $PartenaireCopyWith<$Res> get partenaire;
}

/// @nodoc
class _$InterventionCopyWithImpl<$Res, $Val extends Intervention>
    implements $InterventionCopyWith<$Res> {
  _$InterventionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interventionId = null,
    Object? demandeId = null,
    Object? clientId = null,
    Object? partenaireId = null,
    Object? dateheureIntervention = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? partenaire = null,
  }) {
    return _then(_value.copyWith(
      interventionId: null == interventionId
          ? _value.interventionId
          : interventionId // ignore: cast_nullable_to_non_nullable
              as int,
      demandeId: null == demandeId
          ? _value.demandeId
          : demandeId // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      dateheureIntervention: null == dateheureIntervention
          ? _value.dateheureIntervention
          : dateheureIntervention // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      partenaire: null == partenaire
          ? _value.partenaire
          : partenaire // ignore: cast_nullable_to_non_nullable
              as Partenaire,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartenaireCopyWith<$Res> get partenaire {
    return $PartenaireCopyWith<$Res>(_value.partenaire, (value) {
      return _then(_value.copyWith(partenaire: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InterventionImplCopyWith<$Res>
    implements $InterventionCopyWith<$Res> {
  factory _$$InterventionImplCopyWith(
          _$InterventionImpl value, $Res Function(_$InterventionImpl) then) =
      __$$InterventionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'intervention_id') int interventionId,
      @JsonKey(name: 'demande_id') int demandeId,
      @JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'dateheure_intervention') DateTime dateheureIntervention,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'partenaire') Partenaire partenaire});

  @override
  $PartenaireCopyWith<$Res> get partenaire;
}

/// @nodoc
class __$$InterventionImplCopyWithImpl<$Res>
    extends _$InterventionCopyWithImpl<$Res, _$InterventionImpl>
    implements _$$InterventionImplCopyWith<$Res> {
  __$$InterventionImplCopyWithImpl(
      _$InterventionImpl _value, $Res Function(_$InterventionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interventionId = null,
    Object? demandeId = null,
    Object? clientId = null,
    Object? partenaireId = null,
    Object? dateheureIntervention = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? partenaire = null,
  }) {
    return _then(_$InterventionImpl(
      interventionId: null == interventionId
          ? _value.interventionId
          : interventionId // ignore: cast_nullable_to_non_nullable
              as int,
      demandeId: null == demandeId
          ? _value.demandeId
          : demandeId // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      dateheureIntervention: null == dateheureIntervention
          ? _value.dateheureIntervention
          : dateheureIntervention // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      partenaire: null == partenaire
          ? _value.partenaire
          : partenaire // ignore: cast_nullable_to_non_nullable
              as Partenaire,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterventionImpl implements _Intervention {
  const _$InterventionImpl(
      {@JsonKey(name: 'intervention_id') required this.interventionId,
      @JsonKey(name: 'demande_id') required this.demandeId,
      @JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'partenaire_id') required this.partenaireId,
      @JsonKey(name: 'dateheure_intervention')
      required this.dateheureIntervention,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'partenaire') required this.partenaire});

  factory _$InterventionImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterventionImplFromJson(json);

  @override
  @JsonKey(name: 'intervention_id')
  final int interventionId;
  @override
  @JsonKey(name: 'demande_id')
  final int demandeId;
  @override
  @JsonKey(name: 'client_id')
  final int clientId;
  @override
  @JsonKey(name: 'partenaire_id')
  final int partenaireId;
  @override
  @JsonKey(name: 'dateheure_intervention')
  final DateTime dateheureIntervention;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'partenaire')
  final Partenaire partenaire;

  @override
  String toString() {
    return 'Intervention(interventionId: $interventionId, demandeId: $demandeId, clientId: $clientId, partenaireId: $partenaireId, dateheureIntervention: $dateheureIntervention, createdAt: $createdAt, updatedAt: $updatedAt, partenaire: $partenaire)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterventionImpl &&
            (identical(other.interventionId, interventionId) ||
                other.interventionId == interventionId) &&
            (identical(other.demandeId, demandeId) ||
                other.demandeId == demandeId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.partenaireId, partenaireId) ||
                other.partenaireId == partenaireId) &&
            (identical(other.dateheureIntervention, dateheureIntervention) ||
                other.dateheureIntervention == dateheureIntervention) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.partenaire, partenaire) ||
                other.partenaire == partenaire));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      interventionId,
      demandeId,
      clientId,
      partenaireId,
      dateheureIntervention,
      createdAt,
      updatedAt,
      partenaire);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InterventionImplCopyWith<_$InterventionImpl> get copyWith =>
      __$$InterventionImplCopyWithImpl<_$InterventionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterventionImplToJson(
      this,
    );
  }
}

abstract class _Intervention implements Intervention {
  const factory _Intervention(
          {@JsonKey(name: 'intervention_id') required final int interventionId,
          @JsonKey(name: 'demande_id') required final int demandeId,
          @JsonKey(name: 'client_id') required final int clientId,
          @JsonKey(name: 'partenaire_id') required final int partenaireId,
          @JsonKey(name: 'dateheure_intervention')
          required final DateTime dateheureIntervention,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'partenaire') required final Partenaire partenaire}) =
      _$InterventionImpl;

  factory _Intervention.fromJson(Map<String, dynamic> json) =
      _$InterventionImpl.fromJson;

  @override
  @JsonKey(name: 'intervention_id')
  int get interventionId;
  @override
  @JsonKey(name: 'demande_id')
  int get demandeId;
  @override
  @JsonKey(name: 'client_id')
  int get clientId;
  @override
  @JsonKey(name: 'partenaire_id')
  int get partenaireId;
  @override
  @JsonKey(name: 'dateheure_intervention')
  DateTime get dateheureIntervention;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'partenaire')
  Partenaire get partenaire;
  @override
  @JsonKey(ignore: true)
  _$$InterventionImplCopyWith<_$InterventionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
