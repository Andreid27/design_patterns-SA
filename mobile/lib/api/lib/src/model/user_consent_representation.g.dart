// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_consent_representation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserConsentRepresentation extends UserConsentRepresentation {
  @override
  final String? clientId;
  @override
  final BuiltList<String>? grantedClientScopes;
  @override
  final int? createdDate;
  @override
  final int? lastUpdatedDate;
  @override
  final BuiltList<String>? grantedRealmRoles;

  factory _$UserConsentRepresentation([
    void Function(UserConsentRepresentationBuilder)? updates,
  ]) => (UserConsentRepresentationBuilder()..update(updates))._build();

  _$UserConsentRepresentation._({
    this.clientId,
    this.grantedClientScopes,
    this.createdDate,
    this.lastUpdatedDate,
    this.grantedRealmRoles,
  }) : super._();
  @override
  UserConsentRepresentation rebuild(
    void Function(UserConsentRepresentationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserConsentRepresentationBuilder toBuilder() =>
      UserConsentRepresentationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserConsentRepresentation &&
        clientId == other.clientId &&
        grantedClientScopes == other.grantedClientScopes &&
        createdDate == other.createdDate &&
        lastUpdatedDate == other.lastUpdatedDate &&
        grantedRealmRoles == other.grantedRealmRoles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, grantedClientScopes.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, lastUpdatedDate.hashCode);
    _$hash = $jc(_$hash, grantedRealmRoles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserConsentRepresentation')
          ..add('clientId', clientId)
          ..add('grantedClientScopes', grantedClientScopes)
          ..add('createdDate', createdDate)
          ..add('lastUpdatedDate', lastUpdatedDate)
          ..add('grantedRealmRoles', grantedRealmRoles))
        .toString();
  }
}

class UserConsentRepresentationBuilder
    implements
        Builder<UserConsentRepresentation, UserConsentRepresentationBuilder> {
  _$UserConsentRepresentation? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  ListBuilder<String>? _grantedClientScopes;
  ListBuilder<String> get grantedClientScopes =>
      _$this._grantedClientScopes ??= ListBuilder<String>();
  set grantedClientScopes(ListBuilder<String>? grantedClientScopes) =>
      _$this._grantedClientScopes = grantedClientScopes;

  int? _createdDate;
  int? get createdDate => _$this._createdDate;
  set createdDate(int? createdDate) => _$this._createdDate = createdDate;

  int? _lastUpdatedDate;
  int? get lastUpdatedDate => _$this._lastUpdatedDate;
  set lastUpdatedDate(int? lastUpdatedDate) =>
      _$this._lastUpdatedDate = lastUpdatedDate;

  ListBuilder<String>? _grantedRealmRoles;
  ListBuilder<String> get grantedRealmRoles =>
      _$this._grantedRealmRoles ??= ListBuilder<String>();
  set grantedRealmRoles(ListBuilder<String>? grantedRealmRoles) =>
      _$this._grantedRealmRoles = grantedRealmRoles;

  UserConsentRepresentationBuilder() {
    UserConsentRepresentation._defaults(this);
  }

  UserConsentRepresentationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _grantedClientScopes = $v.grantedClientScopes?.toBuilder();
      _createdDate = $v.createdDate;
      _lastUpdatedDate = $v.lastUpdatedDate;
      _grantedRealmRoles = $v.grantedRealmRoles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserConsentRepresentation other) {
    _$v = other as _$UserConsentRepresentation;
  }

  @override
  void update(void Function(UserConsentRepresentationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserConsentRepresentation build() => _build();

  _$UserConsentRepresentation _build() {
    _$UserConsentRepresentation _$result;
    try {
      _$result =
          _$v ??
          _$UserConsentRepresentation._(
            clientId: clientId,
            grantedClientScopes: _grantedClientScopes?.build(),
            createdDate: createdDate,
            lastUpdatedDate: lastUpdatedDate,
            grantedRealmRoles: _grantedRealmRoles?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'grantedClientScopes';
        _grantedClientScopes?.build();

        _$failedField = 'grantedRealmRoles';
        _grantedRealmRoles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserConsentRepresentation',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
