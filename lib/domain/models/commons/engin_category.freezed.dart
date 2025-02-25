// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'engin_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EnginCategory _$EnginCategoryFromJson(Map<String, dynamic> json) {
  return _EnginCategory.fromJson(json);
}

/// @nodoc
mixin _$EnginCategory {
  @JsonKey(name: 'categorie_engin_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'libelle')
  String get libelle => throw _privateConstructorUsedError;
  @JsonKey(name: 'statut')
  int get statut => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this EnginCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EnginCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnginCategoryCopyWith<EnginCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnginCategoryCopyWith<$Res> {
  factory $EnginCategoryCopyWith(
          EnginCategory value, $Res Function(EnginCategory) then) =
      _$EnginCategoryCopyWithImpl<$Res, EnginCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'categorie_engin_id') int id,
      @JsonKey(name: 'libelle') String libelle,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$EnginCategoryCopyWithImpl<$Res, $Val extends EnginCategory>
    implements $EnginCategoryCopyWith<$Res> {
  _$EnginCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnginCategory
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
abstract class _$$EnginCategoryImplCopyWith<$Res>
    implements $EnginCategoryCopyWith<$Res> {
  factory _$$EnginCategoryImplCopyWith(
          _$EnginCategoryImpl value, $Res Function(_$EnginCategoryImpl) then) =
      __$$EnginCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'categorie_engin_id') int id,
      @JsonKey(name: 'libelle') String libelle,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$EnginCategoryImplCopyWithImpl<$Res>
    extends _$EnginCategoryCopyWithImpl<$Res, _$EnginCategoryImpl>
    implements _$$EnginCategoryImplCopyWith<$Res> {
  __$$EnginCategoryImplCopyWithImpl(
      _$EnginCategoryImpl _value, $Res Function(_$EnginCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of EnginCategory
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
    return _then(_$EnginCategoryImpl(
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
class _$EnginCategoryImpl implements _EnginCategory {
  const _$EnginCategoryImpl(
      {@JsonKey(name: 'categorie_engin_id') required this.id,
      @JsonKey(name: 'libelle') required this.libelle,
      @JsonKey(name: 'statut') required this.statut,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$EnginCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnginCategoryImplFromJson(json);

  @override
  @JsonKey(name: 'categorie_engin_id')
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
    return 'EnginCategory(id: $id, libelle: $libelle, statut: $statut, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnginCategoryImpl &&
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

  /// Create a copy of EnginCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnginCategoryImplCopyWith<_$EnginCategoryImpl> get copyWith =>
      __$$EnginCategoryImplCopyWithImpl<_$EnginCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnginCategoryImplToJson(
      this,
    );
  }
}

abstract class _EnginCategory implements EnginCategory {
  const factory _EnginCategory(
          {@JsonKey(name: 'categorie_engin_id') required final int id,
          @JsonKey(name: 'libelle') required final String libelle,
          @JsonKey(name: 'statut') required final int statut,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$EnginCategoryImpl;

  factory _EnginCategory.fromJson(Map<String, dynamic> json) =
      _$EnginCategoryImpl.fromJson;

  @override
  @JsonKey(name: 'categorie_engin_id')
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

  /// Create a copy of EnginCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnginCategoryImplCopyWith<_$EnginCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
