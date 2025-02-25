// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AutoType _$AutoTypeFromJson(Map<String, dynamic> json) {
  return _AutoType.fromJson(json);
}

/// @nodoc
mixin _$AutoType {
  @JsonKey(name: 'type_auto_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'libelle')
  String get libelle => throw _privateConstructorUsedError;
  @JsonKey(name: 'statut')
  int get statut => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AutoType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoTypeCopyWith<AutoType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoTypeCopyWith<$Res> {
  factory $AutoTypeCopyWith(AutoType value, $Res Function(AutoType) then) =
      _$AutoTypeCopyWithImpl<$Res, AutoType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type_auto_id') int id,
      @JsonKey(name: 'libelle') String libelle,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$AutoTypeCopyWithImpl<$Res, $Val extends AutoType>
    implements $AutoTypeCopyWith<$Res> {
  _$AutoTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoType
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
abstract class _$$AutoTypeImplCopyWith<$Res>
    implements $AutoTypeCopyWith<$Res> {
  factory _$$AutoTypeImplCopyWith(
          _$AutoTypeImpl value, $Res Function(_$AutoTypeImpl) then) =
      __$$AutoTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type_auto_id') int id,
      @JsonKey(name: 'libelle') String libelle,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$AutoTypeImplCopyWithImpl<$Res>
    extends _$AutoTypeCopyWithImpl<$Res, _$AutoTypeImpl>
    implements _$$AutoTypeImplCopyWith<$Res> {
  __$$AutoTypeImplCopyWithImpl(
      _$AutoTypeImpl _value, $Res Function(_$AutoTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoType
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
    return _then(_$AutoTypeImpl(
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
class _$AutoTypeImpl implements _AutoType {
  const _$AutoTypeImpl(
      {@JsonKey(name: 'type_auto_id') required this.id,
      @JsonKey(name: 'libelle') required this.libelle,
      @JsonKey(name: 'statut') required this.statut,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$AutoTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoTypeImplFromJson(json);

  @override
  @JsonKey(name: 'type_auto_id')
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
    return 'AutoType(id: $id, libelle: $libelle, statut: $statut, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoTypeImpl &&
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

  /// Create a copy of AutoType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoTypeImplCopyWith<_$AutoTypeImpl> get copyWith =>
      __$$AutoTypeImplCopyWithImpl<_$AutoTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoTypeImplToJson(
      this,
    );
  }
}

abstract class _AutoType implements AutoType {
  const factory _AutoType(
          {@JsonKey(name: 'type_auto_id') required final int id,
          @JsonKey(name: 'libelle') required final String libelle,
          @JsonKey(name: 'statut') required final int statut,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$AutoTypeImpl;

  factory _AutoType.fromJson(Map<String, dynamic> json) =
      _$AutoTypeImpl.fromJson;

  @override
  @JsonKey(name: 'type_auto_id')
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

  /// Create a copy of AutoType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoTypeImplCopyWith<_$AutoTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
