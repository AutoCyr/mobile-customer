// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_piece.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailPiece _$DetailPieceFromJson(Map<String, dynamic> json) {
  return _DetailPiece.fromJson(json);
}

/// @nodoc
mixin _$DetailPiece {
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'partenaire_id')
  int get partenaireId => throw _privateConstructorUsedError;
  @JsonKey(name: 'piece_id')
  int? get pieceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'article_id')
  int? get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_engin_id')
  int get typeEnginId => throw _privateConstructorUsedError;
  @JsonKey(name: 'prix_piece')
  int get prixPiece => throw _privateConstructorUsedError;
  @JsonKey(name: 'garantie')
  int get garantie => throw _privateConstructorUsedError;
  @JsonKey(name: 'autres')
  String? get autres => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_piece')
  String get imagePiece => throw _privateConstructorUsedError;
  @JsonKey(name: 'statut')
  int get statut => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'piece')
  Piece? get piece => throw _privateConstructorUsedError;
  @JsonKey(name: 'article')
  Article? get article => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_engin')
  EnginType get typeEngin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailPieceCopyWith<DetailPiece> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPieceCopyWith<$Res> {
  factory $DetailPieceCopyWith(
          DetailPiece value, $Res Function(DetailPiece) then) =
      _$DetailPieceCopyWithImpl<$Res, DetailPiece>;
  @useResult
  $Res call(
      {@JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'piece_id') int? pieceId,
      @JsonKey(name: 'article_id') int? articleId,
      @JsonKey(name: 'type_engin_id') int typeEnginId,
      @JsonKey(name: 'prix_piece') int prixPiece,
      @JsonKey(name: 'garantie') int garantie,
      @JsonKey(name: 'autres') String? autres,
      @JsonKey(name: 'image_piece') String imagePiece,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'piece') Piece? piece,
      @JsonKey(name: 'article') Article? article,
      @JsonKey(name: 'type_engin') EnginType typeEngin});

  $PieceCopyWith<$Res>? get piece;
  $ArticleCopyWith<$Res>? get article;
  $EnginTypeCopyWith<$Res> get typeEngin;
}

/// @nodoc
class _$DetailPieceCopyWithImpl<$Res, $Val extends DetailPiece>
    implements $DetailPieceCopyWith<$Res> {
  _$DetailPieceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailPieceId = null,
    Object? partenaireId = null,
    Object? pieceId = freezed,
    Object? articleId = freezed,
    Object? typeEnginId = null,
    Object? prixPiece = null,
    Object? garantie = null,
    Object? autres = freezed,
    Object? imagePiece = null,
    Object? statut = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? piece = freezed,
    Object? article = freezed,
    Object? typeEngin = null,
  }) {
    return _then(_value.copyWith(
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      pieceId: freezed == pieceId
          ? _value.pieceId
          : pieceId // ignore: cast_nullable_to_non_nullable
              as int?,
      articleId: freezed == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeEnginId: null == typeEnginId
          ? _value.typeEnginId
          : typeEnginId // ignore: cast_nullable_to_non_nullable
              as int,
      prixPiece: null == prixPiece
          ? _value.prixPiece
          : prixPiece // ignore: cast_nullable_to_non_nullable
              as int,
      garantie: null == garantie
          ? _value.garantie
          : garantie // ignore: cast_nullable_to_non_nullable
              as int,
      autres: freezed == autres
          ? _value.autres
          : autres // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePiece: null == imagePiece
          ? _value.imagePiece
          : imagePiece // ignore: cast_nullable_to_non_nullable
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
      piece: freezed == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Piece?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article?,
      typeEngin: null == typeEngin
          ? _value.typeEngin
          : typeEngin // ignore: cast_nullable_to_non_nullable
              as EnginType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PieceCopyWith<$Res>? get piece {
    if (_value.piece == null) {
      return null;
    }

    return $PieceCopyWith<$Res>(_value.piece!, (value) {
      return _then(_value.copyWith(piece: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res>? get article {
    if (_value.article == null) {
      return null;
    }

    return $ArticleCopyWith<$Res>(_value.article!, (value) {
      return _then(_value.copyWith(article: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EnginTypeCopyWith<$Res> get typeEngin {
    return $EnginTypeCopyWith<$Res>(_value.typeEngin, (value) {
      return _then(_value.copyWith(typeEngin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailPieceImplCopyWith<$Res>
    implements $DetailPieceCopyWith<$Res> {
  factory _$$DetailPieceImplCopyWith(
          _$DetailPieceImpl value, $Res Function(_$DetailPieceImpl) then) =
      __$$DetailPieceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'piece_id') int? pieceId,
      @JsonKey(name: 'article_id') int? articleId,
      @JsonKey(name: 'type_engin_id') int typeEnginId,
      @JsonKey(name: 'prix_piece') int prixPiece,
      @JsonKey(name: 'garantie') int garantie,
      @JsonKey(name: 'autres') String? autres,
      @JsonKey(name: 'image_piece') String imagePiece,
      @JsonKey(name: 'statut') int statut,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'piece') Piece? piece,
      @JsonKey(name: 'article') Article? article,
      @JsonKey(name: 'type_engin') EnginType typeEngin});

  @override
  $PieceCopyWith<$Res>? get piece;
  @override
  $ArticleCopyWith<$Res>? get article;
  @override
  $EnginTypeCopyWith<$Res> get typeEngin;
}

/// @nodoc
class __$$DetailPieceImplCopyWithImpl<$Res>
    extends _$DetailPieceCopyWithImpl<$Res, _$DetailPieceImpl>
    implements _$$DetailPieceImplCopyWith<$Res> {
  __$$DetailPieceImplCopyWithImpl(
      _$DetailPieceImpl _value, $Res Function(_$DetailPieceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailPieceId = null,
    Object? partenaireId = null,
    Object? pieceId = freezed,
    Object? articleId = freezed,
    Object? typeEnginId = null,
    Object? prixPiece = null,
    Object? garantie = null,
    Object? autres = freezed,
    Object? imagePiece = null,
    Object? statut = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? piece = freezed,
    Object? article = freezed,
    Object? typeEngin = null,
  }) {
    return _then(_$DetailPieceImpl(
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      pieceId: freezed == pieceId
          ? _value.pieceId
          : pieceId // ignore: cast_nullable_to_non_nullable
              as int?,
      articleId: freezed == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeEnginId: null == typeEnginId
          ? _value.typeEnginId
          : typeEnginId // ignore: cast_nullable_to_non_nullable
              as int,
      prixPiece: null == prixPiece
          ? _value.prixPiece
          : prixPiece // ignore: cast_nullable_to_non_nullable
              as int,
      garantie: null == garantie
          ? _value.garantie
          : garantie // ignore: cast_nullable_to_non_nullable
              as int,
      autres: freezed == autres
          ? _value.autres
          : autres // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePiece: null == imagePiece
          ? _value.imagePiece
          : imagePiece // ignore: cast_nullable_to_non_nullable
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
      piece: freezed == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Piece?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article?,
      typeEngin: null == typeEngin
          ? _value.typeEngin
          : typeEngin // ignore: cast_nullable_to_non_nullable
              as EnginType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailPieceImpl implements _DetailPiece {
  const _$DetailPieceImpl(
      {@JsonKey(name: 'detail_piece_id') required this.detailPieceId,
      @JsonKey(name: 'partenaire_id') required this.partenaireId,
      @JsonKey(name: 'piece_id') this.pieceId,
      @JsonKey(name: 'article_id') this.articleId,
      @JsonKey(name: 'type_engin_id') required this.typeEnginId,
      @JsonKey(name: 'prix_piece') required this.prixPiece,
      @JsonKey(name: 'garantie') required this.garantie,
      @JsonKey(name: 'autres') this.autres,
      @JsonKey(name: 'image_piece') required this.imagePiece,
      @JsonKey(name: 'statut') required this.statut,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'piece') this.piece,
      @JsonKey(name: 'article') this.article,
      @JsonKey(name: 'type_engin') required this.typeEngin});

  factory _$DetailPieceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailPieceImplFromJson(json);

  @override
  @JsonKey(name: 'detail_piece_id')
  final int detailPieceId;
  @override
  @JsonKey(name: 'partenaire_id')
  final int partenaireId;
  @override
  @JsonKey(name: 'piece_id')
  final int? pieceId;
  @override
  @JsonKey(name: 'article_id')
  final int? articleId;
  @override
  @JsonKey(name: 'type_engin_id')
  final int typeEnginId;
  @override
  @JsonKey(name: 'prix_piece')
  final int prixPiece;
  @override
  @JsonKey(name: 'garantie')
  final int garantie;
  @override
  @JsonKey(name: 'autres')
  final String? autres;
  @override
  @JsonKey(name: 'image_piece')
  final String imagePiece;
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
  @JsonKey(name: 'piece')
  final Piece? piece;
  @override
  @JsonKey(name: 'article')
  final Article? article;
  @override
  @JsonKey(name: 'type_engin')
  final EnginType typeEngin;

  @override
  String toString() {
    return 'DetailPiece(detailPieceId: $detailPieceId, partenaireId: $partenaireId, pieceId: $pieceId, articleId: $articleId, typeEnginId: $typeEnginId, prixPiece: $prixPiece, garantie: $garantie, autres: $autres, imagePiece: $imagePiece, statut: $statut, createdAt: $createdAt, updatedAt: $updatedAt, piece: $piece, article: $article, typeEngin: $typeEngin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPieceImpl &&
            (identical(other.detailPieceId, detailPieceId) ||
                other.detailPieceId == detailPieceId) &&
            (identical(other.partenaireId, partenaireId) ||
                other.partenaireId == partenaireId) &&
            (identical(other.pieceId, pieceId) || other.pieceId == pieceId) &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.typeEnginId, typeEnginId) ||
                other.typeEnginId == typeEnginId) &&
            (identical(other.prixPiece, prixPiece) ||
                other.prixPiece == prixPiece) &&
            (identical(other.garantie, garantie) ||
                other.garantie == garantie) &&
            (identical(other.autres, autres) || other.autres == autres) &&
            (identical(other.imagePiece, imagePiece) ||
                other.imagePiece == imagePiece) &&
            (identical(other.statut, statut) || other.statut == statut) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.piece, piece) || other.piece == piece) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.typeEngin, typeEngin) ||
                other.typeEngin == typeEngin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      detailPieceId,
      partenaireId,
      pieceId,
      articleId,
      typeEnginId,
      prixPiece,
      garantie,
      autres,
      imagePiece,
      statut,
      createdAt,
      updatedAt,
      piece,
      article,
      typeEngin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailPieceImplCopyWith<_$DetailPieceImpl> get copyWith =>
      __$$DetailPieceImplCopyWithImpl<_$DetailPieceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailPieceImplToJson(
      this,
    );
  }
}

abstract class _DetailPiece implements DetailPiece {
  const factory _DetailPiece(
          {@JsonKey(name: 'detail_piece_id') required final int detailPieceId,
          @JsonKey(name: 'partenaire_id') required final int partenaireId,
          @JsonKey(name: 'piece_id') final int? pieceId,
          @JsonKey(name: 'article_id') final int? articleId,
          @JsonKey(name: 'type_engin_id') required final int typeEnginId,
          @JsonKey(name: 'prix_piece') required final int prixPiece,
          @JsonKey(name: 'garantie') required final int garantie,
          @JsonKey(name: 'autres') final String? autres,
          @JsonKey(name: 'image_piece') required final String imagePiece,
          @JsonKey(name: 'statut') required final int statut,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'piece') final Piece? piece,
          @JsonKey(name: 'article') final Article? article,
          @JsonKey(name: 'type_engin') required final EnginType typeEngin}) =
      _$DetailPieceImpl;

  factory _DetailPiece.fromJson(Map<String, dynamic> json) =
      _$DetailPieceImpl.fromJson;

  @override
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId;
  @override
  @JsonKey(name: 'partenaire_id')
  int get partenaireId;
  @override
  @JsonKey(name: 'piece_id')
  int? get pieceId;
  @override
  @JsonKey(name: 'article_id')
  int? get articleId;
  @override
  @JsonKey(name: 'type_engin_id')
  int get typeEnginId;
  @override
  @JsonKey(name: 'prix_piece')
  int get prixPiece;
  @override
  @JsonKey(name: 'garantie')
  int get garantie;
  @override
  @JsonKey(name: 'autres')
  String? get autres;
  @override
  @JsonKey(name: 'image_piece')
  String get imagePiece;
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
  @JsonKey(name: 'piece')
  Piece? get piece;
  @override
  @JsonKey(name: 'article')
  Article? get article;
  @override
  @JsonKey(name: 'type_engin')
  EnginType get typeEngin;
  @override
  @JsonKey(ignore: true)
  _$$DetailPieceImplCopyWith<_$DetailPieceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
