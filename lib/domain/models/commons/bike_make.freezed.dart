// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bike_make.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BikeMake _$BikeMakeFromJson(Map<String, dynamic> json) {
  return _BikeMake.fromJson(json);
}

/// @nodoc
mixin _$BikeMake {
  @JsonKey(name: 'marque_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'libelle_marque')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_marque')
  int get typeMarque => throw _privateConstructorUsedError;
  @JsonKey(name: 'statut')
  int get statut => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BikeMake to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BikeMake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BikeMakeCopyWith<BikeMake> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BikeMakeCopyWith<$Res> {
  factory $BikeMakeCopyWith(BikeMake value, $Res Function(BikeMake) then) =
      _$BikeMakeCopyWithImpl<$Res, BikeMake>;
  @useResult
  $Res call(
      {@JsonKey(name: 'marque_id') int id,
      @JsonKey(name: 'libelle_marque') String name,
      @JsonKey(name: 'type_marque') int typeMarque,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$BikeMakeCopyWithImpl<$Res, $Val extends BikeMake>
    implements $BikeMakeCopyWith<$Res> {
  _$BikeMakeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BikeMake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? typeMarque = null,
    Object? statut = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typeMarque: null == typeMarque
          ? _value.typeMarque
          : typeMarque // ignore: cast_nullable_to_non_nullable
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
abstract class _$$BikeMakeImplCopyWith<$Res>
    implements $BikeMakeCopyWith<$Res> {
  factory _$$BikeMakeImplCopyWith(
          _$BikeMakeImpl value, $Res Function(_$BikeMakeImpl) then) =
      __$$BikeMakeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'marque_id') int id,
      @JsonKey(name: 'libelle_marque') String name,
      @JsonKey(name: 'type_marque') int typeMarque,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$BikeMakeImplCopyWithImpl<$Res>
    extends _$BikeMakeCopyWithImpl<$Res, _$BikeMakeImpl>
    implements _$$BikeMakeImplCopyWith<$Res> {
  __$$BikeMakeImplCopyWithImpl(
      _$BikeMakeImpl _value, $Res Function(_$BikeMakeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BikeMake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? typeMarque = null,
    Object? statut = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$BikeMakeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typeMarque: null == typeMarque
          ? _value.typeMarque
          : typeMarque // ignore: cast_nullable_to_non_nullable
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
class _$BikeMakeImpl implements _BikeMake {
  const _$BikeMakeImpl(
      {@JsonKey(name: 'marque_id') required this.id,
      @JsonKey(name: 'libelle_marque') required this.name,
      @JsonKey(name: 'type_marque') required this.typeMarque,
      @JsonKey(name: 'statut') required this.statut,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$BikeMakeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BikeMakeImplFromJson(json);

  @override
  @JsonKey(name: 'marque_id')
  final int id;
  @override
  @JsonKey(name: 'libelle_marque')
  final String name;
  @override
  @JsonKey(name: 'type_marque')
  final int typeMarque;
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
    return 'BikeMake(id: $id, name: $name, typeMarque: $typeMarque, statut: $statut, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BikeMakeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.typeMarque, typeMarque) ||
                other.typeMarque == typeMarque) &&
            (identical(other.statut, statut) || other.statut == statut) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, typeMarque, statut, createdAt, updatedAt);

  /// Create a copy of BikeMake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BikeMakeImplCopyWith<_$BikeMakeImpl> get copyWith =>
      __$$BikeMakeImplCopyWithImpl<_$BikeMakeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BikeMakeImplToJson(
      this,
    );
  }
}

abstract class _BikeMake implements BikeMake {
  const factory _BikeMake(
          {@JsonKey(name: 'marque_id') required final int id,
          @JsonKey(name: 'libelle_marque') required final String name,
          @JsonKey(name: 'type_marque') required final int typeMarque,
          @JsonKey(name: 'statut') required final int statut,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$BikeMakeImpl;

  factory _BikeMake.fromJson(Map<String, dynamic> json) =
      _$BikeMakeImpl.fromJson;

  @override
  @JsonKey(name: 'marque_id')
  int get id;
  @override
  @JsonKey(name: 'libelle_marque')
  String get name;
  @override
  @JsonKey(name: 'type_marque')
  int get typeMarque;
  @override
  @JsonKey(name: 'statut')
  int get statut;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of BikeMake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BikeMakeImplCopyWith<_$BikeMakeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
