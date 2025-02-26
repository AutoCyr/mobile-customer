// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'make_compatibility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MakeCompatibility _$MakeCompatibilityFromJson(Map<String, dynamic> json) {
  return _MakeCompatibility.fromJson(json);
}

/// @nodoc
mixin _$MakeCompatibility {
  @JsonKey(name: 'compatibilite_marque_id')
  int get compatibiliteMarqueId => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marque_id')
  int get marqueId => throw _privateConstructorUsedError;
  @JsonKey(name: 'partenaire_id')
  int get partenaireId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'marque')
  Make get marque => throw _privateConstructorUsedError;

  /// Serializes this MakeCompatibility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MakeCompatibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MakeCompatibilityCopyWith<MakeCompatibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeCompatibilityCopyWith<$Res> {
  factory $MakeCompatibilityCopyWith(
          MakeCompatibility value, $Res Function(MakeCompatibility) then) =
      _$MakeCompatibilityCopyWithImpl<$Res, MakeCompatibility>;
  @useResult
  $Res call(
      {@JsonKey(name: 'compatibilite_marque_id') int compatibiliteMarqueId,
      @JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'marque_id') int marqueId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'marque') Make marque});

  $MakeCopyWith<$Res> get marque;
}

/// @nodoc
class _$MakeCompatibilityCopyWithImpl<$Res, $Val extends MakeCompatibility>
    implements $MakeCompatibilityCopyWith<$Res> {
  _$MakeCompatibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MakeCompatibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compatibiliteMarqueId = null,
    Object? detailPieceId = null,
    Object? marqueId = null,
    Object? partenaireId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? marque = null,
  }) {
    return _then(_value.copyWith(
      compatibiliteMarqueId: null == compatibiliteMarqueId
          ? _value.compatibiliteMarqueId
          : compatibiliteMarqueId // ignore: cast_nullable_to_non_nullable
              as int,
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      marqueId: null == marqueId
          ? _value.marqueId
          : marqueId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      marque: null == marque
          ? _value.marque
          : marque // ignore: cast_nullable_to_non_nullable
              as Make,
    ) as $Val);
  }

  /// Create a copy of MakeCompatibility
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
abstract class _$$MakeCompatibilityImplCopyWith<$Res>
    implements $MakeCompatibilityCopyWith<$Res> {
  factory _$$MakeCompatibilityImplCopyWith(_$MakeCompatibilityImpl value,
          $Res Function(_$MakeCompatibilityImpl) then) =
      __$$MakeCompatibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'compatibilite_marque_id') int compatibiliteMarqueId,
      @JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'marque_id') int marqueId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'marque') Make marque});

  @override
  $MakeCopyWith<$Res> get marque;
}

/// @nodoc
class __$$MakeCompatibilityImplCopyWithImpl<$Res>
    extends _$MakeCompatibilityCopyWithImpl<$Res, _$MakeCompatibilityImpl>
    implements _$$MakeCompatibilityImplCopyWith<$Res> {
  __$$MakeCompatibilityImplCopyWithImpl(_$MakeCompatibilityImpl _value,
      $Res Function(_$MakeCompatibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MakeCompatibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compatibiliteMarqueId = null,
    Object? detailPieceId = null,
    Object? marqueId = null,
    Object? partenaireId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? marque = null,
  }) {
    return _then(_$MakeCompatibilityImpl(
      compatibiliteMarqueId: null == compatibiliteMarqueId
          ? _value.compatibiliteMarqueId
          : compatibiliteMarqueId // ignore: cast_nullable_to_non_nullable
              as int,
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      marqueId: null == marqueId
          ? _value.marqueId
          : marqueId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      marque: null == marque
          ? _value.marque
          : marque // ignore: cast_nullable_to_non_nullable
              as Make,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MakeCompatibilityImpl implements _MakeCompatibility {
  const _$MakeCompatibilityImpl(
      {@JsonKey(name: 'compatibilite_marque_id')
      required this.compatibiliteMarqueId,
      @JsonKey(name: 'detail_piece_id') required this.detailPieceId,
      @JsonKey(name: 'marque_id') required this.marqueId,
      @JsonKey(name: 'partenaire_id') required this.partenaireId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'marque') required this.marque});

  factory _$MakeCompatibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MakeCompatibilityImplFromJson(json);

  @override
  @JsonKey(name: 'compatibilite_marque_id')
  final int compatibiliteMarqueId;
  @override
  @JsonKey(name: 'detail_piece_id')
  final int detailPieceId;
  @override
  @JsonKey(name: 'marque_id')
  final int marqueId;
  @override
  @JsonKey(name: 'partenaire_id')
  final int partenaireId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'marque')
  final Make marque;

  @override
  String toString() {
    return 'MakeCompatibility(compatibiliteMarqueId: $compatibiliteMarqueId, detailPieceId: $detailPieceId, marqueId: $marqueId, partenaireId: $partenaireId, createdAt: $createdAt, updatedAt: $updatedAt, marque: $marque)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeCompatibilityImpl &&
            (identical(other.compatibiliteMarqueId, compatibiliteMarqueId) ||
                other.compatibiliteMarqueId == compatibiliteMarqueId) &&
            (identical(other.detailPieceId, detailPieceId) ||
                other.detailPieceId == detailPieceId) &&
            (identical(other.marqueId, marqueId) ||
                other.marqueId == marqueId) &&
            (identical(other.partenaireId, partenaireId) ||
                other.partenaireId == partenaireId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.marque, marque) || other.marque == marque));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, compatibiliteMarqueId,
      detailPieceId, marqueId, partenaireId, createdAt, updatedAt, marque);

  /// Create a copy of MakeCompatibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeCompatibilityImplCopyWith<_$MakeCompatibilityImpl> get copyWith =>
      __$$MakeCompatibilityImplCopyWithImpl<_$MakeCompatibilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MakeCompatibilityImplToJson(
      this,
    );
  }
}

abstract class _MakeCompatibility implements MakeCompatibility {
  const factory _MakeCompatibility(
          {@JsonKey(name: 'compatibilite_marque_id')
          required final int compatibiliteMarqueId,
          @JsonKey(name: 'detail_piece_id') required final int detailPieceId,
          @JsonKey(name: 'marque_id') required final int marqueId,
          @JsonKey(name: 'partenaire_id') required final int partenaireId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'marque') required final Make marque}) =
      _$MakeCompatibilityImpl;

  factory _MakeCompatibility.fromJson(Map<String, dynamic> json) =
      _$MakeCompatibilityImpl.fromJson;

  @override
  @JsonKey(name: 'compatibilite_marque_id')
  int get compatibiliteMarqueId;
  @override
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId;
  @override
  @JsonKey(name: 'marque_id')
  int get marqueId;
  @override
  @JsonKey(name: 'partenaire_id')
  int get partenaireId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'marque')
  Make get marque;

  /// Create a copy of MakeCompatibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakeCompatibilityImplCopyWith<_$MakeCompatibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
