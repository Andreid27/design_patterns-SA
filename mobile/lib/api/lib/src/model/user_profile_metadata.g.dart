// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfileMetadata extends UserProfileMetadata {
  @override
  final BuiltList<UserProfileAttributeMetadata>? attributes;
  @override
  final BuiltList<UserProfileAttributeGroupMetadata>? groups;

  factory _$UserProfileMetadata([
    void Function(UserProfileMetadataBuilder)? updates,
  ]) => (UserProfileMetadataBuilder()..update(updates))._build();

  _$UserProfileMetadata._({this.attributes, this.groups}) : super._();
  @override
  UserProfileMetadata rebuild(
    void Function(UserProfileMetadataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserProfileMetadataBuilder toBuilder() =>
      UserProfileMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileMetadata &&
        attributes == other.attributes &&
        groups == other.groups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserProfileMetadata')
          ..add('attributes', attributes)
          ..add('groups', groups))
        .toString();
  }
}

class UserProfileMetadataBuilder
    implements Builder<UserProfileMetadata, UserProfileMetadataBuilder> {
  _$UserProfileMetadata? _$v;

  ListBuilder<UserProfileAttributeMetadata>? _attributes;
  ListBuilder<UserProfileAttributeMetadata> get attributes =>
      _$this._attributes ??= ListBuilder<UserProfileAttributeMetadata>();
  set attributes(ListBuilder<UserProfileAttributeMetadata>? attributes) =>
      _$this._attributes = attributes;

  ListBuilder<UserProfileAttributeGroupMetadata>? _groups;
  ListBuilder<UserProfileAttributeGroupMetadata> get groups =>
      _$this._groups ??= ListBuilder<UserProfileAttributeGroupMetadata>();
  set groups(ListBuilder<UserProfileAttributeGroupMetadata>? groups) =>
      _$this._groups = groups;

  UserProfileMetadataBuilder() {
    UserProfileMetadata._defaults(this);
  }

  UserProfileMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributes = $v.attributes?.toBuilder();
      _groups = $v.groups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileMetadata other) {
    _$v = other as _$UserProfileMetadata;
  }

  @override
  void update(void Function(UserProfileMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfileMetadata build() => _build();

  _$UserProfileMetadata _build() {
    _$UserProfileMetadata _$result;
    try {
      _$result =
          _$v ??
          _$UserProfileMetadata._(
            attributes: _attributes?.build(),
            groups: _groups?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserProfileMetadata',
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
