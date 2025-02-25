// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Client _$ClientFromJson(Map<String, dynamic> json) {
  return _Client.fromJson(json);
}

/// @nodoc
mixin _$Client {
  @JsonKey(name: 'client_id')
  int get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pays_id')
  int get paysId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pseudo_client')
  String get pseudoClient => throw _privateConstructorUsedError;
  @JsonKey(name: 'telephone_1')
  String get telephone1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'telephone_2')
  String? get telephone2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'adresses_client')
  List<Address>? get adressesClient => throw _privateConstructorUsedError;

  /// Serializes this Client to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Client
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res, Client>;
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'pays_id') int paysId,
      @JsonKey(name: 'pseudo_client') String pseudoClient,
      @JsonKey(name: 'telephone_1') String telephone1,
      @JsonKey(name: 'telephone_2') String? telephone2,
      @JsonKey(name: 'adresses_client') List<Address>? adressesClient});
}

/// @nodoc
class _$ClientCopyWithImpl<$Res, $Val extends Client>
    implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Client
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? userId = null,
    Object? paysId = null,
    Object? pseudoClient = null,
    Object? telephone1 = null,
    Object? telephone2 = freezed,
    Object? adressesClient = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paysId: null == paysId
          ? _value.paysId
          : paysId // ignore: cast_nullable_to_non_nullable
              as int,
      pseudoClient: null == pseudoClient
          ? _value.pseudoClient
          : pseudoClient // ignore: cast_nullable_to_non_nullable
              as String,
      telephone1: null == telephone1
          ? _value.telephone1
          : telephone1 // ignore: cast_nullable_to_non_nullable
              as String,
      telephone2: freezed == telephone2
          ? _value.telephone2
          : telephone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      adressesClient: freezed == adressesClient
          ? _value.adressesClient
          : adressesClient // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientImplCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$$ClientImplCopyWith(
          _$ClientImpl value, $Res Function(_$ClientImpl) then) =
      __$$ClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'pays_id') int paysId,
      @JsonKey(name: 'pseudo_client') String pseudoClient,
      @JsonKey(name: 'telephone_1') String telephone1,
      @JsonKey(name: 'telephone_2') String? telephone2,
      @JsonKey(name: 'adresses_client') List<Address>? adressesClient});
}

/// @nodoc
class __$$ClientImplCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientImpl>
    implements _$$ClientImplCopyWith<$Res> {
  __$$ClientImplCopyWithImpl(
      _$ClientImpl _value, $Res Function(_$ClientImpl) _then)
      : super(_value, _then);

  /// Create a copy of Client
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? userId = null,
    Object? paysId = null,
    Object? pseudoClient = null,
    Object? telephone1 = null,
    Object? telephone2 = freezed,
    Object? adressesClient = freezed,
  }) {
    return _then(_$ClientImpl(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paysId: null == paysId
          ? _value.paysId
          : paysId // ignore: cast_nullable_to_non_nullable
              as int,
      pseudoClient: null == pseudoClient
          ? _value.pseudoClient
          : pseudoClient // ignore: cast_nullable_to_non_nullable
              as String,
      telephone1: null == telephone1
          ? _value.telephone1
          : telephone1 // ignore: cast_nullable_to_non_nullable
              as String,
      telephone2: freezed == telephone2
          ? _value.telephone2
          : telephone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      adressesClient: freezed == adressesClient
          ? _value._adressesClient
          : adressesClient // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientImpl implements _Client {
  const _$ClientImpl(
      {@JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'pays_id') required this.paysId,
      @JsonKey(name: 'pseudo_client') required this.pseudoClient,
      @JsonKey(name: 'telephone_1') required this.telephone1,
      @JsonKey(name: 'telephone_2') this.telephone2,
      @JsonKey(name: 'adresses_client') final List<Address>? adressesClient})
      : _adressesClient = adressesClient;

  factory _$ClientImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientImplFromJson(json);

  @override
  @JsonKey(name: 'client_id')
  final int clientId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'pays_id')
  final int paysId;
  @override
  @JsonKey(name: 'pseudo_client')
  final String pseudoClient;
  @override
  @JsonKey(name: 'telephone_1')
  final String telephone1;
  @override
  @JsonKey(name: 'telephone_2')
  final String? telephone2;
  final List<Address>? _adressesClient;
  @override
  @JsonKey(name: 'adresses_client')
  List<Address>? get adressesClient {
    final value = _adressesClient;
    if (value == null) return null;
    if (_adressesClient is EqualUnmodifiableListView) return _adressesClient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Client(clientId: $clientId, userId: $userId, paysId: $paysId, pseudoClient: $pseudoClient, telephone1: $telephone1, telephone2: $telephone2, adressesClient: $adressesClient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.paysId, paysId) || other.paysId == paysId) &&
            (identical(other.pseudoClient, pseudoClient) ||
                other.pseudoClient == pseudoClient) &&
            (identical(other.telephone1, telephone1) ||
                other.telephone1 == telephone1) &&
            (identical(other.telephone2, telephone2) ||
                other.telephone2 == telephone2) &&
            const DeepCollectionEquality()
                .equals(other._adressesClient, _adressesClient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientId,
      userId,
      paysId,
      pseudoClient,
      telephone1,
      telephone2,
      const DeepCollectionEquality().hash(_adressesClient));

  /// Create a copy of Client
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientImplCopyWith<_$ClientImpl> get copyWith =>
      __$$ClientImplCopyWithImpl<_$ClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientImplToJson(
      this,
    );
  }
}

abstract class _Client implements Client {
  const factory _Client(
      {@JsonKey(name: 'client_id') required final int clientId,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'pays_id') required final int paysId,
      @JsonKey(name: 'pseudo_client') required final String pseudoClient,
      @JsonKey(name: 'telephone_1') required final String telephone1,
      @JsonKey(name: 'telephone_2') final String? telephone2,
      @JsonKey(name: 'adresses_client')
      final List<Address>? adressesClient}) = _$ClientImpl;

  factory _Client.fromJson(Map<String, dynamic> json) = _$ClientImpl.fromJson;

  @override
  @JsonKey(name: 'client_id')
  int get clientId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'pays_id')
  int get paysId;
  @override
  @JsonKey(name: 'pseudo_client')
  String get pseudoClient;
  @override
  @JsonKey(name: 'telephone_1')
  String get telephone1;
  @override
  @JsonKey(name: 'telephone_2')
  String? get telephone2;
  @override
  @JsonKey(name: 'adresses_client')
  List<Address>? get adressesClient;

  /// Create a copy of Client
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientImplCopyWith<_$ClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
