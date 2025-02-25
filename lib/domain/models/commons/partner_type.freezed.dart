// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartnerType _$PartnerTypeFromJson(Map<String, dynamic> json) {
  return _PartnerType.fromJson(json);
}

/// @nodoc
mixin _$PartnerType {
  @JsonKey(name: 'type_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'libelle')
  String get libelle => throw _privateConstructorUsedError;
  @JsonKey(name: 'statut')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PartnerType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartnerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartnerTypeCopyWith<PartnerType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerTypeCopyWith<$Res> {
  factory $PartnerTypeCopyWith(
          PartnerType value, $Res Function(PartnerType) then) =
      _$PartnerTypeCopyWithImpl<$Res, PartnerType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type_id') int id,
      @JsonKey(name: 'libelle') String libelle,
      @JsonKey(name: 'statut') int status,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$PartnerTypeCopyWithImpl<$Res, $Val extends PartnerType>
    implements $PartnerTypeCopyWith<$Res> {
  _$PartnerTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartnerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
    Object? status = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PartnerTypeImplCopyWith<$Res>
    implements $PartnerTypeCopyWith<$Res> {
  factory _$$PartnerTypeImplCopyWith(
          _$PartnerTypeImpl value, $Res Function(_$PartnerTypeImpl) then) =
      __$$PartnerTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type_id') int id,
      @JsonKey(name: 'libelle') String libelle,
      @JsonKey(name: 'statut') int status,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$PartnerTypeImplCopyWithImpl<$Res>
    extends _$PartnerTypeCopyWithImpl<$Res, _$PartnerTypeImpl>
    implements _$$PartnerTypeImplCopyWith<$Res> {
  __$$PartnerTypeImplCopyWithImpl(
      _$PartnerTypeImpl _value, $Res Function(_$PartnerTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartnerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PartnerTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$PartnerTypeImpl implements _PartnerType {
  const _$PartnerTypeImpl(
      {@JsonKey(name: 'type_id') required this.id,
      @JsonKey(name: 'libelle') required this.libelle,
      @JsonKey(name: 'statut') required this.status,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$PartnerTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerTypeImplFromJson(json);

  @override
  @JsonKey(name: 'type_id')
  final int id;
  @override
  @JsonKey(name: 'libelle')
  final String libelle;
  @override
  @JsonKey(name: 'statut')
  final int status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'PartnerType(id: $id, libelle: $libelle, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.libelle, libelle) || other.libelle == libelle) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, libelle, status, createdAt, updatedAt);

  /// Create a copy of PartnerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerTypeImplCopyWith<_$PartnerTypeImpl> get copyWith =>
      __$$PartnerTypeImplCopyWithImpl<_$PartnerTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerTypeImplToJson(
      this,
    );
  }
}

abstract class _PartnerType implements PartnerType {
  const factory _PartnerType(
          {@JsonKey(name: 'type_id') required final int id,
          @JsonKey(name: 'libelle') required final String libelle,
          @JsonKey(name: 'statut') required final int status,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$PartnerTypeImpl;

  factory _PartnerType.fromJson(Map<String, dynamic> json) =
      _$PartnerTypeImpl.fromJson;

  @override
  @JsonKey(name: 'type_id')
  int get id;
  @override
  @JsonKey(name: 'libelle')
  String get libelle;
  @override
  @JsonKey(name: 'statut')
  int get status;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of PartnerType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartnerTypeImplCopyWith<_$PartnerTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
