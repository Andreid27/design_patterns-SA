// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federated_identity_representation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FederatedIdentityRepresentation
    extends FederatedIdentityRepresentation {
  @override
  final String? identityProvider;
  @override
  final String? userId;
  @override
  final String? userName;

  factory _$FederatedIdentityRepresentation([
    void Function(FederatedIdentityRepresentationBuilder)? updates,
  ]) => (FederatedIdentityRepresentationBuilder()..update(updates))._build();

  _$FederatedIdentityRepresentation._({
    this.identityProvider,
    this.userId,
    this.userName,
  }) : super._();
  @override
  FederatedIdentityRepresentation rebuild(
    void Function(FederatedIdentityRepresentationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FederatedIdentityRepresentationBuilder toBuilder() =>
      FederatedIdentityRepresentationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FederatedIdentityRepresentation &&
        identityProvider == other.identityProvider &&
        userId == other.userId &&
        userName == other.userName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, identityProvider.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FederatedIdentityRepresentation')
          ..add('identityProvider', identityProvider)
          ..add('userId', userId)
          ..add('userName', userName))
        .toString();
  }
}

class FederatedIdentityRepresentationBuilder
    implements
        Builder<
          FederatedIdentityRepresentation,
          FederatedIdentityRepresentationBuilder
        > {
  _$FederatedIdentityRepresentation? _$v;

  String? _identityProvider;
  String? get identityProvider => _$this._identityProvider;
  set identityProvider(String? identityProvider) =>
      _$this._identityProvider = identityProvider;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  FederatedIdentityRepresentationBuilder() {
    FederatedIdentityRepresentation._defaults(this);
  }

  FederatedIdentityRepresentationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identityProvider = $v.identityProvider;
      _userId = $v.userId;
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FederatedIdentityRepresentation other) {
    _$v = other as _$FederatedIdentityRepresentation;
  }

  @override
  void update(void Function(FederatedIdentityRepresentationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FederatedIdentityRepresentation build() => _build();

  _$FederatedIdentityRepresentation _build() {
    final _$result =
        _$v ??
        _$FederatedIdentityRepresentation._(
          identityProvider: identityProvider,
          userId: userId,
          userName: userName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
