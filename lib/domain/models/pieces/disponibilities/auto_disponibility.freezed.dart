// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_disponibility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AutoDisponibility _$AutoDisponibilityFromJson(Map<String, dynamic> json) {
  return _AutoDisponibility.fromJson(json);
}

/// @nodoc
mixin _$AutoDisponibility {
  @JsonKey(name: 'disponibilite_auto_id')
  int get disponibiliteAutoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'partenaire_id')
  int get partenaireId => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_auto_id')
  int get typeAutoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_auto')
  AutoType get typeAuto => throw _privateConstructorUsedError;

  /// Serializes this AutoDisponibility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoDisponibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoDisponibilityCopyWith<AutoDisponibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoDisponibilityCopyWith<$Res> {
  factory $AutoDisponibilityCopyWith(
          AutoDisponibility value, $Res Function(AutoDisponibility) then) =
      _$AutoDisponibilityCopyWithImpl<$Res, AutoDisponibility>;
  @useResult
  $Res call(
      {@JsonKey(name: 'disponibilite_auto_id') int disponibiliteAutoId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'type_auto_id') int typeAutoId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'type_auto') AutoType typeAuto});

  $AutoTypeCopyWith<$Res> get typeAuto;
}

/// @nodoc
class _$AutoDisponibilityCopyWithImpl<$Res, $Val extends AutoDisponibility>
    implements $AutoDisponibilityCopyWith<$Res> {
  _$AutoDisponibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoDisponibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disponibiliteAutoId = null,
    Object? partenaireId = null,
    Object? detailPieceId = null,
    Object? typeAutoId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? typeAuto = null,
  }) {
    return _then(_value.copyWith(
      disponibiliteAutoId: null == disponibiliteAutoId
          ? _value.disponibiliteAutoId
          : disponibiliteAutoId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      typeAutoId: null == typeAutoId
          ? _value.typeAutoId
          : typeAutoId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeAuto: null == typeAuto
          ? _value.typeAuto
          : typeAuto // ignore: cast_nullable_to_non_nullable
              as AutoType,
    ) as $Val);
  }

  /// Create a copy of AutoDisponibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoTypeCopyWith<$Res> get typeAuto {
    return $AutoTypeCopyWith<$Res>(_value.typeAuto, (value) {
      return _then(_value.copyWith(typeAuto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AutoDisponibilityImplCopyWith<$Res>
    implements $AutoDisponibilityCopyWith<$Res> {
  factory _$$AutoDisponibilityImplCopyWith(_$AutoDisponibilityImpl value,
          $Res Function(_$AutoDisponibilityImpl) then) =
      __$$AutoDisponibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'disponibilite_auto_id') int disponibiliteAutoId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'type_auto_id') int typeAutoId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'type_auto') AutoType typeAuto});

  @override
  $AutoTypeCopyWith<$Res> get typeAuto;
}

/// @nodoc
class __$$AutoDisponibilityImplCopyWithImpl<$Res>
    extends _$AutoDisponibilityCopyWithImpl<$Res, _$AutoDisponibilityImpl>
    implements _$$AutoDisponibilityImplCopyWith<$Res> {
  __$$AutoDisponibilityImplCopyWithImpl(_$AutoDisponibilityImpl _value,
      $Res Function(_$AutoDisponibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoDisponibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disponibiliteAutoId = null,
    Object? partenaireId = null,
    Object? detailPieceId = null,
    Object? typeAutoId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? typeAuto = null,
  }) {
    return _then(_$AutoDisponibilityImpl(
      disponibiliteAutoId: null == disponibiliteAutoId
          ? _value.disponibiliteAutoId
          : disponibiliteAutoId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      typeAutoId: null == typeAutoId
          ? _value.typeAutoId
          : typeAutoId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeAuto: null == typeAuto
          ? _value.typeAuto
          : typeAuto // ignore: cast_nullable_to_non_nullable
              as AutoType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoDisponibilityImpl implements _AutoDisponibility {
  const _$AutoDisponibilityImpl(
      {@JsonKey(name: 'disponibilite_auto_id')
      required this.disponibiliteAutoId,
      @JsonKey(name: 'partenaire_id') required this.partenaireId,
      @JsonKey(name: 'detail_piece_id') required this.detailPieceId,
      @JsonKey(name: 'type_auto_id') required this.typeAutoId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'type_auto') required this.typeAuto});

  factory _$AutoDisponibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoDisponibilityImplFromJson(json);

  @override
  @JsonKey(name: 'disponibilite_auto_id')
  final int disponibiliteAutoId;
  @override
  @JsonKey(name: 'partenaire_id')
  final int partenaireId;
  @override
  @JsonKey(name: 'detail_piece_id')
  final int detailPieceId;
  @override
  @JsonKey(name: 'type_auto_id')
  final int typeAutoId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'type_auto')
  final AutoType typeAuto;

  @override
  String toString() {
    return 'AutoDisponibility(disponibiliteAutoId: $disponibiliteAutoId, partenaireId: $partenaireId, detailPieceId: $detailPieceId, typeAutoId: $typeAutoId, createdAt: $createdAt, updatedAt: $updatedAt, typeAuto: $typeAuto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoDisponibilityImpl &&
            (identical(other.disponibiliteAutoId, disponibiliteAutoId) ||
                other.disponibiliteAutoId == disponibiliteAutoId) &&
            (identical(other.partenaireId, partenaireId) ||
                other.partenaireId == partenaireId) &&
            (identical(other.detailPieceId, detailPieceId) ||
                other.detailPieceId == detailPieceId) &&
            (identical(other.typeAutoId, typeAutoId) ||
                other.typeAutoId == typeAutoId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.typeAuto, typeAuto) ||
                other.typeAuto == typeAuto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, disponibiliteAutoId,
      partenaireId, detailPieceId, typeAutoId, createdAt, updatedAt, typeAuto);

  /// Create a copy of AutoDisponibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoDisponibilityImplCopyWith<_$AutoDisponibilityImpl> get copyWith =>
      __$$AutoDisponibilityImplCopyWithImpl<_$AutoDisponibilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoDisponibilityImplToJson(
      this,
    );
  }
}

abstract class _AutoDisponibility implements AutoDisponibility {
  const factory _AutoDisponibility(
          {@JsonKey(name: 'disponibilite_auto_id')
          required final int disponibiliteAutoId,
          @JsonKey(name: 'partenaire_id') required final int partenaireId,
          @JsonKey(name: 'detail_piece_id') required final int detailPieceId,
          @JsonKey(name: 'type_auto_id') required final int typeAutoId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'type_auto') required final AutoType typeAuto}) =
      _$AutoDisponibilityImpl;

  factory _AutoDisponibility.fromJson(Map<String, dynamic> json) =
      _$AutoDisponibilityImpl.fromJson;

  @override
  @JsonKey(name: 'disponibilite_auto_id')
  int get disponibiliteAutoId;
  @override
  @JsonKey(name: 'partenaire_id')
  int get partenaireId;
  @override
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId;
  @override
  @JsonKey(name: 'type_auto_id')
  int get typeAutoId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'type_auto')
  AutoType get typeAuto;

  /// Create a copy of AutoDisponibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoDisponibilityImplCopyWith<_$AutoDisponibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
