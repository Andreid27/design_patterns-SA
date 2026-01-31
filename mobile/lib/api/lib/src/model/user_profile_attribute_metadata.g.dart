// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_attribute_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfileAttributeMetadata extends UserProfileAttributeMetadata {
  @override
  final String? name;
  @override
  final String? displayName;
  @override
  final bool? required_;
  @override
  final bool? readOnly;
  @override
  final BuiltMap<String, JsonObject>? annotations;
  @override
  final BuiltMap<String, BuiltMap<String, JsonObject>>? validators;
  @override
  final String? group;
  @override
  final bool? multivalued;

  factory _$UserProfileAttributeMetadata([
    void Function(UserProfileAttributeMetadataBuilder)? updates,
  ]) => (UserProfileAttributeMetadataBuilder()..update(updates))._build();

  _$UserProfileAttributeMetadata._({
    this.name,
    this.displayName,
    this.required_,
    this.readOnly,
    this.annotations,
    this.validators,
    this.group,
    this.multivalued,
  }) : super._();
  @override
  UserProfileAttributeMetadata rebuild(
    void Function(UserProfileAttributeMetadataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserProfileAttributeMetadataBuilder toBuilder() =>
      UserProfileAttributeMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileAttributeMetadata &&
        name == other.name &&
        displayName == other.displayName &&
        required_ == other.required_ &&
        readOnly == other.readOnly &&
        annotations == other.annotations &&
        validators == other.validators &&
        group == other.group &&
        multivalued == other.multivalued;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jc(_$hash, annotations.hashCode);
    _$hash = $jc(_$hash, validators.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, multivalued.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserProfileAttributeMetadata')
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('required_', required_)
          ..add('readOnly', readOnly)
          ..add('annotations', annotations)
          ..add('validators', validators)
          ..add('group', group)
          ..add('multivalued', multivalued))
        .toString();
  }
}

class UserProfileAttributeMetadataBuilder
    implements
        Builder<
          UserProfileAttributeMetadata,
          UserProfileAttributeMetadataBuilder
        > {
  _$UserProfileAttributeMetadata? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  bool? _readOnly;
  bool? get readOnly => _$this._readOnly;
  set readOnly(bool? readOnly) => _$this._readOnly = readOnly;

  MapBuilder<String, JsonObject>? _annotations;
  MapBuilder<String, JsonObject> get annotations =>
      _$this._annotations ??= MapBuilder<String, JsonObject>();
  set annotations(MapBuilder<String, JsonObject>? annotations) =>
      _$this._annotations = annotations;

  MapBuilder<String, BuiltMap<String, JsonObject>>? _validators;
  MapBuilder<String, BuiltMap<String, JsonObject>> get validators =>
      _$this._validators ??= MapBuilder<String, BuiltMap<String, JsonObject>>();
  set validators(
    MapBuilder<String, BuiltMap<String, JsonObject>>? validators,
  ) => _$this._validators = validators;

  String? _group;
  String? get group => _$this._group;
  set group(String? group) => _$this._group = group;

  bool? _multivalued;
  bool? get multivalued => _$this._multivalued;
  set multivalued(bool? multivalued) => _$this._multivalued = multivalued;

  UserProfileAttributeMetadataBuilder() {
    UserProfileAttributeMetadata._defaults(this);
  }

  UserProfileAttributeMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _displayName = $v.displayName;
      _required_ = $v.required_;
      _readOnly = $v.readOnly;
      _annotations = $v.annotations?.toBuilder();
      _validators = $v.validators?.toBuilder();
      _group = $v.group;
      _multivalued = $v.multivalued;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileAttributeMetadata other) {
    _$v = other as _$UserProfileAttributeMetadata;
  }

  @override
  void update(void Function(UserProfileAttributeMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfileAttributeMetadata build() => _build();

  _$UserProfileAttributeMetadata _build() {
    _$UserProfileAttributeMetadata _$result;
    try {
      _$result =
          _$v ??
          _$UserProfileAttributeMetadata._(
            name: name,
            displayName: displayName,
            required_: required_,
            readOnly: readOnly,
            annotations: _annotations?.build(),
            validators: _validators?.build(),
            group: group,
            multivalued: multivalued,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'annotations';
        _annotations?.build();
        _$failedField = 'validators';
        _validators?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserProfileAttributeMetadata',
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
