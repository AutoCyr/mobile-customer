// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_disponibility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryDisponibility _$CategoryDisponibilityFromJson(
    Map<String, dynamic> json) {
  return _CategoryDisponibility.fromJson(json);
}

/// @nodoc
mixin _$CategoryDisponibility {
  @JsonKey(name: 'disponibilite_engin_id')
  int get disponibiliteEnginId => throw _privateConstructorUsedError;
  @JsonKey(name: 'partenaire_id')
  int get partenaireId => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'categorie_engin_id')
  int get categorieEnginId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hybride')
  int get hybride => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'categorie_engin')
  EnginCategory get categorieEngin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDisponibilityCopyWith<CategoryDisponibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDisponibilityCopyWith<$Res> {
  factory $CategoryDisponibilityCopyWith(CategoryDisponibility value,
          $Res Function(CategoryDisponibility) then) =
      _$CategoryDisponibilityCopyWithImpl<$Res, CategoryDisponibility>;
  @useResult
  $Res call(
      {@JsonKey(name: 'disponibilite_engin_id') int disponibiliteEnginId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'categorie_engin_id') int categorieEnginId,
      @JsonKey(name: 'hybride') int hybride,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'categorie_engin') EnginCategory categorieEngin});

  $EnginCategoryCopyWith<$Res> get categorieEngin;
}

/// @nodoc
class _$CategoryDisponibilityCopyWithImpl<$Res,
        $Val extends CategoryDisponibility>
    implements $CategoryDisponibilityCopyWith<$Res> {
  _$CategoryDisponibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disponibiliteEnginId = null,
    Object? partenaireId = null,
    Object? detailPieceId = null,
    Object? categorieEnginId = null,
    Object? hybride = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? categorieEngin = null,
  }) {
    return _then(_value.copyWith(
      disponibiliteEnginId: null == disponibiliteEnginId
          ? _value.disponibiliteEnginId
          : disponibiliteEnginId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      categorieEnginId: null == categorieEnginId
          ? _value.categorieEnginId
          : categorieEnginId // ignore: cast_nullable_to_non_nullable
              as int,
      hybride: null == hybride
          ? _value.hybride
          : hybride // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categorieEngin: null == categorieEngin
          ? _value.categorieEngin
          : categorieEngin // ignore: cast_nullable_to_non_nullable
              as EnginCategory,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EnginCategoryCopyWith<$Res> get categorieEngin {
    return $EnginCategoryCopyWith<$Res>(_value.categorieEngin, (value) {
      return _then(_value.copyWith(categorieEngin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryDisponibilityImplCopyWith<$Res>
    implements $CategoryDisponibilityCopyWith<$Res> {
  factory _$$CategoryDisponibilityImplCopyWith(
          _$CategoryDisponibilityImpl value,
          $Res Function(_$CategoryDisponibilityImpl) then) =
      __$$CategoryDisponibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'disponibilite_engin_id') int disponibiliteEnginId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'categorie_engin_id') int categorieEnginId,
      @JsonKey(name: 'hybride') int hybride,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'categorie_engin') EnginCategory categorieEngin});

  @override
  $EnginCategoryCopyWith<$Res> get categorieEngin;
}

/// @nodoc
class __$$CategoryDisponibilityImplCopyWithImpl<$Res>
    extends _$CategoryDisponibilityCopyWithImpl<$Res,
        _$CategoryDisponibilityImpl>
    implements _$$CategoryDisponibilityImplCopyWith<$Res> {
  __$$CategoryDisponibilityImplCopyWithImpl(_$CategoryDisponibilityImpl _value,
      $Res Function(_$CategoryDisponibilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disponibiliteEnginId = null,
    Object? partenaireId = null,
    Object? detailPieceId = null,
    Object? categorieEnginId = null,
    Object? hybride = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? categorieEngin = null,
  }) {
    return _then(_$CategoryDisponibilityImpl(
      disponibiliteEnginId: null == disponibiliteEnginId
          ? _value.disponibiliteEnginId
          : disponibiliteEnginId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      categorieEnginId: null == categorieEnginId
          ? _value.categorieEnginId
          : categorieEnginId // ignore: cast_nullable_to_non_nullable
              as int,
      hybride: null == hybride
          ? _value.hybride
          : hybride // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categorieEngin: null == categorieEngin
          ? _value.categorieEngin
          : categorieEngin // ignore: cast_nullable_to_non_nullable
              as EnginCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDisponibilityImpl implements _CategoryDisponibility {
  const _$CategoryDisponibilityImpl(
      {@JsonKey(name: 'disponibilite_engin_id')
      required this.disponibiliteEnginId,
      @JsonKey(name: 'partenaire_id') required this.partenaireId,
      @JsonKey(name: 'detail_piece_id') required this.detailPieceId,
      @JsonKey(name: 'categorie_engin_id') required this.categorieEnginId,
      @JsonKey(name: 'hybride') required this.hybride,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'categorie_engin') required this.categorieEngin});

  factory _$CategoryDisponibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDisponibilityImplFromJson(json);

  @override
  @JsonKey(name: 'disponibilite_engin_id')
  final int disponibiliteEnginId;
  @override
  @JsonKey(name: 'partenaire_id')
  final int partenaireId;
  @override
  @JsonKey(name: 'detail_piece_id')
  final int detailPieceId;
  @override
  @JsonKey(name: 'categorie_engin_id')
  final int categorieEnginId;
  @override
  @JsonKey(name: 'hybride')
  final int hybride;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'categorie_engin')
  final EnginCategory categorieEngin;

  @override
  String toString() {
    return 'CategoryDisponibility(disponibiliteEnginId: $disponibiliteEnginId, partenaireId: $partenaireId, detailPieceId: $detailPieceId, categorieEnginId: $categorieEnginId, hybride: $hybride, createdAt: $createdAt, updatedAt: $updatedAt, categorieEngin: $categorieEngin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDisponibilityImpl &&
            (identical(other.disponibiliteEnginId, disponibiliteEnginId) ||
                other.disponibiliteEnginId == disponibiliteEnginId) &&
            (identical(other.partenaireId, partenaireId) ||
                other.partenaireId == partenaireId) &&
            (identical(other.detailPieceId, detailPieceId) ||
                other.detailPieceId == detailPieceId) &&
            (identical(other.categorieEnginId, categorieEnginId) ||
                other.categorieEnginId == categorieEnginId) &&
            (identical(other.hybride, hybride) || other.hybride == hybride) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.categorieEngin, categorieEngin) ||
                other.categorieEngin == categorieEngin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      disponibiliteEnginId,
      partenaireId,
      detailPieceId,
      categorieEnginId,
      hybride,
      createdAt,
      updatedAt,
      categorieEngin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDisponibilityImplCopyWith<_$CategoryDisponibilityImpl>
      get copyWith => __$$CategoryDisponibilityImplCopyWithImpl<
          _$CategoryDisponibilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDisponibilityImplToJson(
      this,
    );
  }
}

abstract class _CategoryDisponibility implements CategoryDisponibility {
  const factory _CategoryDisponibility(
      {@JsonKey(name: 'disponibilite_engin_id')
      required final int disponibiliteEnginId,
      @JsonKey(name: 'partenaire_id') required final int partenaireId,
      @JsonKey(name: 'detail_piece_id') required final int detailPieceId,
      @JsonKey(name: 'categorie_engin_id') required final int categorieEnginId,
      @JsonKey(name: 'hybride') required final int hybride,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'categorie_engin')
      required final EnginCategory
          categorieEngin}) = _$CategoryDisponibilityImpl;

  factory _CategoryDisponibility.fromJson(Map<String, dynamic> json) =
      _$CategoryDisponibilityImpl.fromJson;

  @override
  @JsonKey(name: 'disponibilite_engin_id')
  int get disponibiliteEnginId;
  @override
  @JsonKey(name: 'partenaire_id')
  int get partenaireId;
  @override
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId;
  @override
  @JsonKey(name: 'categorie_engin_id')
  int get categorieEnginId;
  @override
  @JsonKey(name: 'hybride')
  int get hybride;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'categorie_engin')
  EnginCategory get categorieEngin;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDisponibilityImplCopyWith<_$CategoryDisponibilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
