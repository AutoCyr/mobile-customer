// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'motor_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MotorType _$MotorTypeFromJson(Map<String, dynamic> json) {
  return _MotorType.fromJson(json);
}

/// @nodoc
mixin _$MotorType {
  @JsonKey(name: 'type_moteur_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'libelle')
  String get libelle => throw _privateConstructorUsedError;
  @JsonKey(name: 'statut')
  int get statut => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MotorType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MotorType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MotorTypeCopyWith<MotorType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotorTypeCopyWith<$Res> {
  factory $MotorTypeCopyWith(MotorType value, $Res Function(MotorType) then) =
      _$MotorTypeCopyWithImpl<$Res, MotorType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type_moteur_id') int id,
      @JsonKey(name: 'libelle') String libelle,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$MotorTypeCopyWithImpl<$Res, $Val extends MotorType>
    implements $MotorTypeCopyWith<$Res> {
  _$MotorTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MotorType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
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
abstract class _$$MotorTypeImplCopyWith<$Res>
    implements $MotorTypeCopyWith<$Res> {
  factory _$$MotorTypeImplCopyWith(
          _$MotorTypeImpl value, $Res Function(_$MotorTypeImpl) then) =
      __$$MotorTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type_moteur_id') int id,
      @JsonKey(name: 'libelle') String libelle,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$MotorTypeImplCopyWithImpl<$Res>
    extends _$MotorTypeCopyWithImpl<$Res, _$MotorTypeImpl>
    implements _$$MotorTypeImplCopyWith<$Res> {
  __$$MotorTypeImplCopyWithImpl(
      _$MotorTypeImpl _value, $Res Function(_$MotorTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MotorType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
    Object? statut = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MotorTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$MotorTypeImpl implements _MotorType {
  const _$MotorTypeImpl(
      {@JsonKey(name: 'type_moteur_id') required this.id,
      @JsonKey(name: 'libelle') required this.libelle,
      @JsonKey(name: 'statut') required this.statut,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$MotorTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MotorTypeImplFromJson(json);

  @override
  @JsonKey(name: 'type_moteur_id')
  final int id;
  @override
  @JsonKey(name: 'libelle')
  final String libelle;
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
    return 'MotorType(id: $id, libelle: $libelle, statut: $statut, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotorTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.libelle, libelle) || other.libelle == libelle) &&
            (identical(other.statut, statut) || other.statut == statut) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, libelle, statut, createdAt, updatedAt);

  /// Create a copy of MotorType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MotorTypeImplCopyWith<_$MotorTypeImpl> get copyWith =>
      __$$MotorTypeImplCopyWithImpl<_$MotorTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MotorTypeImplToJson(
      this,
    );
  }
}

abstract class _MotorType implements MotorType {
  const factory _MotorType(
          {@JsonKey(name: 'type_moteur_id') required final int id,
          @JsonKey(name: 'libelle') required final String libelle,
          @JsonKey(name: 'statut') required final int statut,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$MotorTypeImpl;

  factory _MotorType.fromJson(Map<String, dynamic> json) =
      _$MotorTypeImpl.fromJson;

  @override
  @JsonKey(name: 'type_moteur_id')
  int get id;
  @override
  @JsonKey(name: 'libelle')
  String get libelle;
  @override
  @JsonKey(name: 'statut')
  int get statut;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of MotorType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MotorTypeImplCopyWith<_$MotorTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
