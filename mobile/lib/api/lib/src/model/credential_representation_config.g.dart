// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_representation_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialRepresentationConfig extends CredentialRepresentationConfig {
  @override
  final bool? empty;

  factory _$CredentialRepresentationConfig([
    void Function(CredentialRepresentationConfigBuilder)? updates,
  ]) => (CredentialRepresentationConfigBuilder()..update(updates))._build();

  _$CredentialRepresentationConfig._({this.empty}) : super._();
  @override
  CredentialRepresentationConfig rebuild(
    void Function(CredentialRepresentationConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CredentialRepresentationConfigBuilder toBuilder() =>
      CredentialRepresentationConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialRepresentationConfig && empty == other.empty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, empty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'CredentialRepresentationConfig',
    )..add('empty', empty)).toString();
  }
}

class CredentialRepresentationConfigBuilder
    implements
        Builder<
          CredentialRepresentationConfig,
          CredentialRepresentationConfigBuilder
        > {
  _$CredentialRepresentationConfig? _$v;

  bool? _empty;
  bool? get empty => _$this._empty;
  set empty(bool? empty) => _$this._empty = empty;

  CredentialRepresentationConfigBuilder() {
    CredentialRepresentationConfig._defaults(this);
  }

  CredentialRepresentationConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _empty = $v.empty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialRepresentationConfig other) {
    _$v = other as _$CredentialRepresentationConfig;
  }

  @override
  void update(void Function(CredentialRepresentationConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialRepresentationConfig build() => _build();

  _$CredentialRepresentationConfig _build() {
    final _$result = _$v ?? _$CredentialRepresentationConfig._(empty: empty);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
