// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_link_representation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialLinkRepresentation extends SocialLinkRepresentation {
  @override
  final String? socialProvider;
  @override
  final String? socialUserId;
  @override
  final String? socialUsername;

  factory _$SocialLinkRepresentation([
    void Function(SocialLinkRepresentationBuilder)? updates,
  ]) => (SocialLinkRepresentationBuilder()..update(updates))._build();

  _$SocialLinkRepresentation._({
    this.socialProvider,
    this.socialUserId,
    this.socialUsername,
  }) : super._();
  @override
  SocialLinkRepresentation rebuild(
    void Function(SocialLinkRepresentationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialLinkRepresentationBuilder toBuilder() =>
      SocialLinkRepresentationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialLinkRepresentation &&
        socialProvider == other.socialProvider &&
        socialUserId == other.socialUserId &&
        socialUsername == other.socialUsername;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, socialProvider.hashCode);
    _$hash = $jc(_$hash, socialUserId.hashCode);
    _$hash = $jc(_$hash, socialUsername.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialLinkRepresentation')
          ..add('socialProvider', socialProvider)
          ..add('socialUserId', socialUserId)
          ..add('socialUsername', socialUsername))
        .toString();
  }
}

class SocialLinkRepresentationBuilder
    implements
        Builder<SocialLinkRepresentation, SocialLinkRepresentationBuilder> {
  _$SocialLinkRepresentation? _$v;

  String? _socialProvider;
  String? get socialProvider => _$this._socialProvider;
  set socialProvider(String? socialProvider) =>
      _$this._socialProvider = socialProvider;

  String? _socialUserId;
  String? get socialUserId => _$this._socialUserId;
  set socialUserId(String? socialUserId) => _$this._socialUserId = socialUserId;

  String? _socialUsername;
  String? get socialUsername => _$this._socialUsername;
  set socialUsername(String? socialUsername) =>
      _$this._socialUsername = socialUsername;

  SocialLinkRepresentationBuilder() {
    SocialLinkRepresentation._defaults(this);
  }

  SocialLinkRepresentationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _socialProvider = $v.socialProvider;
      _socialUserId = $v.socialUserId;
      _socialUsername = $v.socialUsername;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialLinkRepresentation other) {
    _$v = other as _$SocialLinkRepresentation;
  }

  @override
  void update(void Function(SocialLinkRepresentationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialLinkRepresentation build() => _build();

  _$SocialLinkRepresentation _build() {
    final _$result =
        _$v ??
        _$SocialLinkRepresentation._(
          socialProvider: socialProvider,
          socialUserId: socialUserId,
          socialUsername: socialUsername,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
