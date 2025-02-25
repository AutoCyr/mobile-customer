// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'motor_disponibility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MotorDisponibility _$MotorDisponibilityFromJson(Map<String, dynamic> json) {
  return _MotorDisponibility.fromJson(json);
}

/// @nodoc
mixin _$MotorDisponibility {
  @JsonKey(name: 'disponibilite_moteur_id')
  int get disponibiliteMoteurId => throw _privateConstructorUsedError;
  @JsonKey(name: 'partenaire_id')
  int get partenaireId => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_moteur_id')
  int get typeMoteurId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_moteur')
  MotorType get typeMoteur => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotorDisponibilityCopyWith<MotorDisponibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotorDisponibilityCopyWith<$Res> {
  factory $MotorDisponibilityCopyWith(
          MotorDisponibility value, $Res Function(MotorDisponibility) then) =
      _$MotorDisponibilityCopyWithImpl<$Res, MotorDisponibility>;
  @useResult
  $Res call(
      {@JsonKey(name: 'disponibilite_moteur_id') int disponibiliteMoteurId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'type_moteur_id') int typeMoteurId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'type_moteur') MotorType typeMoteur});

  $MotorTypeCopyWith<$Res> get typeMoteur;
}

/// @nodoc
class _$MotorDisponibilityCopyWithImpl<$Res, $Val extends MotorDisponibility>
    implements $MotorDisponibilityCopyWith<$Res> {
  _$MotorDisponibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disponibiliteMoteurId = null,
    Object? partenaireId = null,
    Object? detailPieceId = null,
    Object? typeMoteurId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? typeMoteur = null,
  }) {
    return _then(_value.copyWith(
      disponibiliteMoteurId: null == disponibiliteMoteurId
          ? _value.disponibiliteMoteurId
          : disponibiliteMoteurId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      typeMoteurId: null == typeMoteurId
          ? _value.typeMoteurId
          : typeMoteurId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeMoteur: null == typeMoteur
          ? _value.typeMoteur
          : typeMoteur // ignore: cast_nullable_to_non_nullable
              as MotorType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MotorTypeCopyWith<$Res> get typeMoteur {
    return $MotorTypeCopyWith<$Res>(_value.typeMoteur, (value) {
      return _then(_value.copyWith(typeMoteur: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MotorDisponibilityImplCopyWith<$Res>
    implements $MotorDisponibilityCopyWith<$Res> {
  factory _$$MotorDisponibilityImplCopyWith(_$MotorDisponibilityImpl value,
          $Res Function(_$MotorDisponibilityImpl) then) =
      __$$MotorDisponibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'disponibilite_moteur_id') int disponibiliteMoteurId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'type_moteur_id') int typeMoteurId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'type_moteur') MotorType typeMoteur});

  @override
  $MotorTypeCopyWith<$Res> get typeMoteur;
}

/// @nodoc
class __$$MotorDisponibilityImplCopyWithImpl<$Res>
    extends _$MotorDisponibilityCopyWithImpl<$Res, _$MotorDisponibilityImpl>
    implements _$$MotorDisponibilityImplCopyWith<$Res> {
  __$$MotorDisponibilityImplCopyWithImpl(_$MotorDisponibilityImpl _value,
      $Res Function(_$MotorDisponibilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disponibiliteMoteurId = null,
    Object? partenaireId = null,
    Object? detailPieceId = null,
    Object? typeMoteurId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? typeMoteur = null,
  }) {
    return _then(_$MotorDisponibilityImpl(
      disponibiliteMoteurId: null == disponibiliteMoteurId
          ? _value.disponibiliteMoteurId
          : disponibiliteMoteurId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      typeMoteurId: null == typeMoteurId
          ? _value.typeMoteurId
          : typeMoteurId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeMoteur: null == typeMoteur
          ? _value.typeMoteur
          : typeMoteur // ignore: cast_nullable_to_non_nullable
              as MotorType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MotorDisponibilityImpl implements _MotorDisponibility {
  const _$MotorDisponibilityImpl(
      {@JsonKey(name: 'disponibilite_moteur_id')
      required this.disponibiliteMoteurId,
      @JsonKey(name: 'partenaire_id') required this.partenaireId,
      @JsonKey(name: 'detail_piece_id') required this.detailPieceId,
      @JsonKey(name: 'type_moteur_id') required this.typeMoteurId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'type_moteur') required this.typeMoteur});

  factory _$MotorDisponibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MotorDisponibilityImplFromJson(json);

  @override
  @JsonKey(name: 'disponibilite_moteur_id')
  final int disponibiliteMoteurId;
  @override
  @JsonKey(name: 'partenaire_id')
  final int partenaireId;
  @override
  @JsonKey(name: 'detail_piece_id')
  final int detailPieceId;
  @override
  @JsonKey(name: 'type_moteur_id')
  final int typeMoteurId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'type_moteur')
  final MotorType typeMoteur;

  @override
  String toString() {
    return 'MotorDisponibility(disponibiliteMoteurId: $disponibiliteMoteurId, partenaireId: $partenaireId, detailPieceId: $detailPieceId, typeMoteurId: $typeMoteurId, createdAt: $createdAt, updatedAt: $updatedAt, typeMoteur: $typeMoteur)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotorDisponibilityImpl &&
            (identical(other.disponibiliteMoteurId, disponibiliteMoteurId) ||
                other.disponibiliteMoteurId == disponibiliteMoteurId) &&
            (identical(other.partenaireId, partenaireId) ||
                other.partenaireId == partenaireId) &&
            (identical(other.detailPieceId, detailPieceId) ||
                other.detailPieceId == detailPieceId) &&
            (identical(other.typeMoteurId, typeMoteurId) ||
                other.typeMoteurId == typeMoteurId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.typeMoteur, typeMoteur) ||
                other.typeMoteur == typeMoteur));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      disponibiliteMoteurId,
      partenaireId,
      detailPieceId,
      typeMoteurId,
      createdAt,
      updatedAt,
      typeMoteur);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MotorDisponibilityImplCopyWith<_$MotorDisponibilityImpl> get copyWith =>
      __$$MotorDisponibilityImplCopyWithImpl<_$MotorDisponibilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MotorDisponibilityImplToJson(
      this,
    );
  }
}

abstract class _MotorDisponibility implements MotorDisponibility {
  const factory _MotorDisponibility(
          {@JsonKey(name: 'disponibilite_moteur_id')
          required final int disponibiliteMoteurId,
          @JsonKey(name: 'partenaire_id') required final int partenaireId,
          @JsonKey(name: 'detail_piece_id') required final int detailPieceId,
          @JsonKey(name: 'type_moteur_id') required final int typeMoteurId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'type_moteur') required final MotorType typeMoteur}) =
      _$MotorDisponibilityImpl;

  factory _MotorDisponibility.fromJson(Map<String, dynamic> json) =
      _$MotorDisponibilityImpl.fromJson;

  @override
  @JsonKey(name: 'disponibilite_moteur_id')
  int get disponibiliteMoteurId;
  @override
  @JsonKey(name: 'partenaire_id')
  int get partenaireId;
  @override
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId;
  @override
  @JsonKey(name: 'type_moteur_id')
  int get typeMoteurId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'type_moteur')
  MotorType get typeMoteur;
  @override
  @JsonKey(ignore: true)
  _$$MotorDisponibilityImplCopyWith<_$MotorDisponibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
