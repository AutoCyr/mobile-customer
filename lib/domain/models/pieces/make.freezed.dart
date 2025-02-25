// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'make.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Make _$MakeFromJson(Map<String, dynamic> json) {
  return _Make.fromJson(json);
}

/// @nodoc
mixin _$Make {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MakeCopyWith<Make> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeCopyWith<$Res> {
  factory $MakeCopyWith(Make value, $Res Function(Make) then) =
      _$MakeCopyWithImpl<$Res, Make>;
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
class _$MakeCopyWithImpl<$Res, $Val extends Make>
    implements $MakeCopyWith<$Res> {
  _$MakeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$MakeImplCopyWith<$Res> implements $MakeCopyWith<$Res> {
  factory _$$MakeImplCopyWith(
          _$MakeImpl value, $Res Function(_$MakeImpl) then) =
      __$$MakeImplCopyWithImpl<$Res>;
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
class __$$MakeImplCopyWithImpl<$Res>
    extends _$MakeCopyWithImpl<$Res, _$MakeImpl>
    implements _$$MakeImplCopyWith<$Res> {
  __$$MakeImplCopyWithImpl(_$MakeImpl _value, $Res Function(_$MakeImpl) _then)
      : super(_value, _then);

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
    return _then(_$MakeImpl(
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
class _$MakeImpl implements _Make {
  const _$MakeImpl(
      {@JsonKey(name: 'marque_id') required this.id,
      @JsonKey(name: 'libelle_marque') required this.name,
      @JsonKey(name: 'type_marque') required this.typeMarque,
      @JsonKey(name: 'statut') required this.statut,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$MakeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MakeImplFromJson(json);

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
    return 'Make(id: $id, name: $name, typeMarque: $typeMarque, statut: $statut, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, typeMarque, statut, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeImplCopyWith<_$MakeImpl> get copyWith =>
      __$$MakeImplCopyWithImpl<_$MakeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MakeImplToJson(
      this,
    );
  }
}

abstract class _Make implements Make {
  const factory _Make(
          {@JsonKey(name: 'marque_id') required final int id,
          @JsonKey(name: 'libelle_marque') required final String name,
          @JsonKey(name: 'type_marque') required final int typeMarque,
          @JsonKey(name: 'statut') required final int statut,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$MakeImpl;

  factory _Make.fromJson(Map<String, dynamic> json) = _$MakeImpl.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$MakeImplCopyWith<_$MakeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
