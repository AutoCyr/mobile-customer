// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commande.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Commande _$CommandeFromJson(Map<String, dynamic> json) {
  return _Commande.fromJson(json);
}

/// @nodoc
mixin _$Commande {
  @JsonKey(name: 'commande_id')
  int get commandeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  int get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'partenaire_id')
  int get partenaireId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_commande')
  DateTime get dateCommande => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'partenaire')
  Partenaire get partenaire => throw _privateConstructorUsedError;
  @JsonKey(name: 'client')
  Client get client => throw _privateConstructorUsedError;
  @JsonKey(name: 'piece_detail')
  DetailPiece get pieceDetail => throw _privateConstructorUsedError;

  /// Serializes this Commande to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Commande
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommandeCopyWith<Commande> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandeCopyWith<$Res> {
  factory $CommandeCopyWith(Commande value, $Res Function(Commande) then) =
      _$CommandeCopyWithImpl<$Res, Commande>;
  @useResult
  $Res call(
      {@JsonKey(name: 'commande_id') int commandeId,
      @JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'date_commande') DateTime dateCommande,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'partenaire') Partenaire partenaire,
      @JsonKey(name: 'client') Client client,
      @JsonKey(name: 'piece_detail') DetailPiece pieceDetail});

  $PartenaireCopyWith<$Res> get partenaire;
  $ClientCopyWith<$Res> get client;
  $DetailPieceCopyWith<$Res> get pieceDetail;
}

/// @nodoc
class _$CommandeCopyWithImpl<$Res, $Val extends Commande>
    implements $CommandeCopyWith<$Res> {
  _$CommandeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Commande
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandeId = null,
    Object? detailPieceId = null,
    Object? clientId = null,
    Object? partenaireId = null,
    Object? dateCommande = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? partenaire = null,
    Object? client = null,
    Object? pieceDetail = null,
  }) {
    return _then(_value.copyWith(
      commandeId: null == commandeId
          ? _value.commandeId
          : commandeId // ignore: cast_nullable_to_non_nullable
              as int,
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      dateCommande: null == dateCommande
          ? _value.dateCommande
          : dateCommande // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      partenaire: null == partenaire
          ? _value.partenaire
          : partenaire // ignore: cast_nullable_to_non_nullable
              as Partenaire,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      pieceDetail: null == pieceDetail
          ? _value.pieceDetail
          : pieceDetail // ignore: cast_nullable_to_non_nullable
              as DetailPiece,
    ) as $Val);
  }

  /// Create a copy of Commande
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PartenaireCopyWith<$Res> get partenaire {
    return $PartenaireCopyWith<$Res>(_value.partenaire, (value) {
      return _then(_value.copyWith(partenaire: value) as $Val);
    });
  }

  /// Create a copy of Commande
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  /// Create a copy of Commande
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailPieceCopyWith<$Res> get pieceDetail {
    return $DetailPieceCopyWith<$Res>(_value.pieceDetail, (value) {
      return _then(_value.copyWith(pieceDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommandeImplCopyWith<$Res>
    implements $CommandeCopyWith<$Res> {
  factory _$$CommandeImplCopyWith(
          _$CommandeImpl value, $Res Function(_$CommandeImpl) then) =
      __$$CommandeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'commande_id') int commandeId,
      @JsonKey(name: 'detail_piece_id') int detailPieceId,
      @JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'partenaire_id') int partenaireId,
      @JsonKey(name: 'date_commande') DateTime dateCommande,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'partenaire') Partenaire partenaire,
      @JsonKey(name: 'client') Client client,
      @JsonKey(name: 'piece_detail') DetailPiece pieceDetail});

  @override
  $PartenaireCopyWith<$Res> get partenaire;
  @override
  $ClientCopyWith<$Res> get client;
  @override
  $DetailPieceCopyWith<$Res> get pieceDetail;
}

/// @nodoc
class __$$CommandeImplCopyWithImpl<$Res>
    extends _$CommandeCopyWithImpl<$Res, _$CommandeImpl>
    implements _$$CommandeImplCopyWith<$Res> {
  __$$CommandeImplCopyWithImpl(
      _$CommandeImpl _value, $Res Function(_$CommandeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Commande
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandeId = null,
    Object? detailPieceId = null,
    Object? clientId = null,
    Object? partenaireId = null,
    Object? dateCommande = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? partenaire = null,
    Object? client = null,
    Object? pieceDetail = null,
  }) {
    return _then(_$CommandeImpl(
      commandeId: null == commandeId
          ? _value.commandeId
          : commandeId // ignore: cast_nullable_to_non_nullable
              as int,
      detailPieceId: null == detailPieceId
          ? _value.detailPieceId
          : detailPieceId // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      partenaireId: null == partenaireId
          ? _value.partenaireId
          : partenaireId // ignore: cast_nullable_to_non_nullable
              as int,
      dateCommande: null == dateCommande
          ? _value.dateCommande
          : dateCommande // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      partenaire: null == partenaire
          ? _value.partenaire
          : partenaire // ignore: cast_nullable_to_non_nullable
              as Partenaire,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      pieceDetail: null == pieceDetail
          ? _value.pieceDetail
          : pieceDetail // ignore: cast_nullable_to_non_nullable
              as DetailPiece,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommandeImpl implements _Commande {
  const _$CommandeImpl(
      {@JsonKey(name: 'commande_id') required this.commandeId,
      @JsonKey(name: 'detail_piece_id') required this.detailPieceId,
      @JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'partenaire_id') required this.partenaireId,
      @JsonKey(name: 'date_commande') required this.dateCommande,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'partenaire') required this.partenaire,
      @JsonKey(name: 'client') required this.client,
      @JsonKey(name: 'piece_detail') required this.pieceDetail});

  factory _$CommandeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommandeImplFromJson(json);

  @override
  @JsonKey(name: 'commande_id')
  final int commandeId;
  @override
  @JsonKey(name: 'detail_piece_id')
  final int detailPieceId;
  @override
  @JsonKey(name: 'client_id')
  final int clientId;
  @override
  @JsonKey(name: 'partenaire_id')
  final int partenaireId;
  @override
  @JsonKey(name: 'date_commande')
  final DateTime dateCommande;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'partenaire')
  final Partenaire partenaire;
  @override
  @JsonKey(name: 'client')
  final Client client;
  @override
  @JsonKey(name: 'piece_detail')
  final DetailPiece pieceDetail;

  @override
  String toString() {
    return 'Commande(commandeId: $commandeId, detailPieceId: $detailPieceId, clientId: $clientId, partenaireId: $partenaireId, dateCommande: $dateCommande, createdAt: $createdAt, updatedAt: $updatedAt, partenaire: $partenaire, client: $client, pieceDetail: $pieceDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandeImpl &&
            (identical(other.commandeId, commandeId) ||
                other.commandeId == commandeId) &&
            (identical(other.detailPieceId, detailPieceId) ||
                other.detailPieceId == detailPieceId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.partenaireId, partenaireId) ||
                other.partenaireId == partenaireId) &&
            (identical(other.dateCommande, dateCommande) ||
                other.dateCommande == dateCommande) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.partenaire, partenaire) ||
                other.partenaire == partenaire) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.pieceDetail, pieceDetail) ||
                other.pieceDetail == pieceDetail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      commandeId,
      detailPieceId,
      clientId,
      partenaireId,
      dateCommande,
      createdAt,
      updatedAt,
      partenaire,
      client,
      pieceDetail);

  /// Create a copy of Commande
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommandeImplCopyWith<_$CommandeImpl> get copyWith =>
      __$$CommandeImplCopyWithImpl<_$CommandeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommandeImplToJson(
      this,
    );
  }
}

abstract class _Commande implements Commande {
  const factory _Commande(
      {@JsonKey(name: 'commande_id') required final int commandeId,
      @JsonKey(name: 'detail_piece_id') required final int detailPieceId,
      @JsonKey(name: 'client_id') required final int clientId,
      @JsonKey(name: 'partenaire_id') required final int partenaireId,
      @JsonKey(name: 'date_commande') required final DateTime dateCommande,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'partenaire') required final Partenaire partenaire,
      @JsonKey(name: 'client') required final Client client,
      @JsonKey(name: 'piece_detail')
      required final DetailPiece pieceDetail}) = _$CommandeImpl;

  factory _Commande.fromJson(Map<String, dynamic> json) =
      _$CommandeImpl.fromJson;

  @override
  @JsonKey(name: 'commande_id')
  int get commandeId;
  @override
  @JsonKey(name: 'detail_piece_id')
  int get detailPieceId;
  @override
  @JsonKey(name: 'client_id')
  int get clientId;
  @override
  @JsonKey(name: 'partenaire_id')
  int get partenaireId;
  @override
  @JsonKey(name: 'date_commande')
  DateTime get dateCommande;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'partenaire')
  Partenaire get partenaire;
  @override
  @JsonKey(name: 'client')
  Client get client;
  @override
  @JsonKey(name: 'piece_detail')
  DetailPiece get pieceDetail;

  /// Create a copy of Commande
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommandeImplCopyWith<_$CommandeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
