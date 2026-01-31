// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_representation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialRepresentation extends CredentialRepresentation {
  @override
  final String? id;
  @override
  final String? type;
  @override
  final String? userLabel;
  @override
  final int? createdDate;
  @override
  final String? secretData;
  @override
  final String? credentialData;
  @override
  final int? priority;
  @override
  final String? value;
  @override
  final bool? temporary;
  @override
  final String? device;
  @override
  final String? hashedSaltedValue;
  @override
  final String? salt;
  @override
  final int? hashIterations;
  @override
  final int? counter;
  @override
  final String? algorithm;
  @override
  final int? digits;
  @override
  final int? period;
  @override
  final CredentialRepresentationConfig? config;

  factory _$CredentialRepresentation([
    void Function(CredentialRepresentationBuilder)? updates,
  ]) => (CredentialRepresentationBuilder()..update(updates))._build();

  _$CredentialRepresentation._({
    this.id,
    this.type,
    this.userLabel,
    this.createdDate,
    this.secretData,
    this.credentialData,
    this.priority,
    this.value,
    this.temporary,
    this.device,
    this.hashedSaltedValue,
    this.salt,
    this.hashIterations,
    this.counter,
    this.algorithm,
    this.digits,
    this.period,
    this.config,
  }) : super._();
  @override
  CredentialRepresentation rebuild(
    void Function(CredentialRepresentationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CredentialRepresentationBuilder toBuilder() =>
      CredentialRepresentationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialRepresentation &&
        id == other.id &&
        type == other.type &&
        userLabel == other.userLabel &&
        createdDate == other.createdDate &&
        secretData == other.secretData &&
        credentialData == other.credentialData &&
        priority == other.priority &&
        value == other.value &&
        temporary == other.temporary &&
        device == other.device &&
        hashedSaltedValue == other.hashedSaltedValue &&
        salt == other.salt &&
        hashIterations == other.hashIterations &&
        counter == other.counter &&
        algorithm == other.algorithm &&
        digits == other.digits &&
        period == other.period &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, userLabel.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, secretData.hashCode);
    _$hash = $jc(_$hash, credentialData.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, temporary.hashCode);
    _$hash = $jc(_$hash, device.hashCode);
    _$hash = $jc(_$hash, hashedSaltedValue.hashCode);
    _$hash = $jc(_$hash, salt.hashCode);
    _$hash = $jc(_$hash, hashIterations.hashCode);
    _$hash = $jc(_$hash, counter.hashCode);
    _$hash = $jc(_$hash, algorithm.hashCode);
    _$hash = $jc(_$hash, digits.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialRepresentation')
          ..add('id', id)
          ..add('type', type)
          ..add('userLabel', userLabel)
          ..add('createdDate', createdDate)
          ..add('secretData', secretData)
          ..add('credentialData', credentialData)
          ..add('priority', priority)
          ..add('value', value)
          ..add('temporary', temporary)
          ..add('device', device)
          ..add('hashedSaltedValue', hashedSaltedValue)
          ..add('salt', salt)
          ..add('hashIterations', hashIterations)
          ..add('counter', counter)
          ..add('algorithm', algorithm)
          ..add('digits', digits)
          ..add('period', period)
          ..add('config', config))
        .toString();
  }
}

class CredentialRepresentationBuilder
    implements
        Builder<CredentialRepresentation, CredentialRepresentationBuilder> {
  _$CredentialRepresentation? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _userLabel;
  String? get userLabel => _$this._userLabel;
  set userLabel(String? userLabel) => _$this._userLabel = userLabel;

  int? _createdDate;
  int? get createdDate => _$this._createdDate;
  set createdDate(int? createdDate) => _$this._createdDate = createdDate;

  String? _secretData;
  String? get secretData => _$this._secretData;
  set secretData(String? secretData) => _$this._secretData = secretData;

  String? _credentialData;
  String? get credentialData => _$this._credentialData;
  set credentialData(String? credentialData) =>
      _$this._credentialData = credentialData;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  bool? _temporary;
  bool? get temporary => _$this._temporary;
  set temporary(bool? temporary) => _$this._temporary = temporary;

  String? _device;
  String? get device => _$this._device;
  set device(String? device) => _$this._device = device;

  String? _hashedSaltedValue;
  String? get hashedSaltedValue => _$this._hashedSaltedValue;
  set hashedSaltedValue(String? hashedSaltedValue) =>
      _$this._hashedSaltedValue = hashedSaltedValue;

  String? _salt;
  String? get salt => _$this._salt;
  set salt(String? salt) => _$this._salt = salt;

  int? _hashIterations;
  int? get hashIterations => _$this._hashIterations;
  set hashIterations(int? hashIterations) =>
      _$this._hashIterations = hashIterations;

  int? _counter;
  int? get counter => _$this._counter;
  set counter(int? counter) => _$this._counter = counter;

  String? _algorithm;
  String? get algorithm => _$this._algorithm;
  set algorithm(String? algorithm) => _$this._algorithm = algorithm;

  int? _digits;
  int? get digits => _$this._digits;
  set digits(int? digits) => _$this._digits = digits;

  int? _period;
  int? get period => _$this._period;
  set period(int? period) => _$this._period = period;

  CredentialRepresentationConfigBuilder? _config;
  CredentialRepresentationConfigBuilder get config =>
      _$this._config ??= CredentialRepresentationConfigBuilder();
  set config(CredentialRepresentationConfigBuilder? config) =>
      _$this._config = config;

  CredentialRepresentationBuilder() {
    CredentialRepresentation._defaults(this);
  }

  CredentialRepresentationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _userLabel = $v.userLabel;
      _createdDate = $v.createdDate;
      _secretData = $v.secretData;
      _credentialData = $v.credentialData;
      _priority = $v.priority;
      _value = $v.value;
      _temporary = $v.temporary;
      _device = $v.device;
      _hashedSaltedValue = $v.hashedSaltedValue;
      _salt = $v.salt;
      _hashIterations = $v.hashIterations;
      _counter = $v.counter;
      _algorithm = $v.algorithm;
      _digits = $v.digits;
      _period = $v.period;
      _config = $v.config?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialRepresentation other) {
    _$v = other as _$CredentialRepresentation;
  }

  @override
  void update(void Function(CredentialRepresentationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialRepresentation build() => _build();

  _$CredentialRepresentation _build() {
    _$CredentialRepresentation _$result;
    try {
      _$result =
          _$v ??
          _$CredentialRepresentation._(
            id: id,
            type: type,
            userLabel: userLabel,
            createdDate: createdDate,
            secretData: secretData,
            credentialData: credentialData,
            priority: priority,
            value: value,
            temporary: temporary,
            device: device,
            hashedSaltedValue: hashedSaltedValue,
            salt: salt,
            hashIterations: hashIterations,
            counter: counter,
            algorithm: algorithm,
            digits: digits,
            period: period,
            config: _config?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CredentialRepresentation',
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
