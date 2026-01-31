// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_attribute_group_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfileAttributeGroupMetadata
    extends UserProfileAttributeGroupMetadata {
  @override
  final String? name;
  @override
  final String? displayHeader;
  @override
  final String? displayDescription;
  @override
  final BuiltMap<String, JsonObject>? annotations;

  factory _$UserProfileAttributeGroupMetadata([
    void Function(UserProfileAttributeGroupMetadataBuilder)? updates,
  ]) => (UserProfileAttributeGroupMetadataBuilder()..update(updates))._build();

  _$UserProfileAttributeGroupMetadata._({
    this.name,
    this.displayHeader,
    this.displayDescription,
    this.annotations,
  }) : super._();
  @override
  UserProfileAttributeGroupMetadata rebuild(
    void Function(UserProfileAttributeGroupMetadataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserProfileAttributeGroupMetadataBuilder toBuilder() =>
      UserProfileAttributeGroupMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileAttributeGroupMetadata &&
        name == other.name &&
        displayHeader == other.displayHeader &&
        displayDescription == other.displayDescription &&
        annotations == other.annotations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayHeader.hashCode);
    _$hash = $jc(_$hash, displayDescription.hashCode);
    _$hash = $jc(_$hash, annotations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserProfileAttributeGroupMetadata')
          ..add('name', name)
          ..add('displayHeader', displayHeader)
          ..add('displayDescription', displayDescription)
          ..add('annotations', annotations))
        .toString();
  }
}

class UserProfileAttributeGroupMetadataBuilder
    implements
        Builder<
          UserProfileAttributeGroupMetadata,
          UserProfileAttributeGroupMetadataBuilder
        > {
  _$UserProfileAttributeGroupMetadata? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayHeader;
  String? get displayHeader => _$this._displayHeader;
  set displayHeader(String? displayHeader) =>
      _$this._displayHeader = displayHeader;

  String? _displayDescription;
  String? get displayDescription => _$this._displayDescription;
  set displayDescription(String? displayDescription) =>
      _$this._displayDescription = displayDescription;

  MapBuilder<String, JsonObject>? _annotations;
  MapBuilder<String, JsonObject> get annotations =>
      _$this._annotations ??= MapBuilder<String, JsonObject>();
  set annotations(MapBuilder<String, JsonObject>? annotations) =>
      _$this._annotations = annotations;

  UserProfileAttributeGroupMetadataBuilder() {
    UserProfileAttributeGroupMetadata._defaults(this);
  }

  UserProfileAttributeGroupMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _displayHeader = $v.displayHeader;
      _displayDescription = $v.displayDescription;
      _annotations = $v.annotations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileAttributeGroupMetadata other) {
    _$v = other as _$UserProfileAttributeGroupMetadata;
  }

  @override
  void update(
    void Function(UserProfileAttributeGroupMetadataBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  UserProfileAttributeGroupMetadata build() => _build();

  _$UserProfileAttributeGroupMetadata _build() {
    _$UserProfileAttributeGroupMetadata _$result;
    try {
      _$result =
          _$v ??
          _$UserProfileAttributeGroupMetadata._(
            name: name,
            displayHeader: displayHeader,
            displayDescription: displayDescription,
            annotations: _annotations?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'annotations';
        _annotations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserProfileAttributeGroupMetadata',
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
