// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_option_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FilterOptionObjectFilterTypeEnum _$filterOptionObjectFilterTypeEnum_DATE =
    const FilterOptionObjectFilterTypeEnum._('DATE');
const FilterOptionObjectFilterTypeEnum
_$filterOptionObjectFilterTypeEnum_DATE_RANGE =
    const FilterOptionObjectFilterTypeEnum._('DATE_RANGE');
const FilterOptionObjectFilterTypeEnum
_$filterOptionObjectFilterTypeEnum_DATE_TIME_RANGE =
    const FilterOptionObjectFilterTypeEnum._('DATE_TIME_RANGE');
const FilterOptionObjectFilterTypeEnum
_$filterOptionObjectFilterTypeEnum_NUMBER =
    const FilterOptionObjectFilterTypeEnum._('NUMBER');
const FilterOptionObjectFilterTypeEnum
_$filterOptionObjectFilterTypeEnum_NUMBER_RANGE =
    const FilterOptionObjectFilterTypeEnum._('NUMBER_RANGE');
const FilterOptionObjectFilterTypeEnum
_$filterOptionObjectFilterTypeEnum_NUMBER_OPTIONS =
    const FilterOptionObjectFilterTypeEnum._('NUMBER_OPTIONS');
const FilterOptionObjectFilterTypeEnum _$filterOptionObjectFilterTypeEnum_TEXT =
    const FilterOptionObjectFilterTypeEnum._('TEXT');
const FilterOptionObjectFilterTypeEnum
_$filterOptionObjectFilterTypeEnum_TEXT_CONTENT =
    const FilterOptionObjectFilterTypeEnum._('TEXT_CONTENT');
const FilterOptionObjectFilterTypeEnum
_$filterOptionObjectFilterTypeEnum_TEXT_OPTIONS =
    const FilterOptionObjectFilterTypeEnum._('TEXT_OPTIONS');
const FilterOptionObjectFilterTypeEnum
_$filterOptionObjectFilterTypeEnum_BOOLEAN_OPTIONS =
    const FilterOptionObjectFilterTypeEnum._('BOOLEAN_OPTIONS');

FilterOptionObjectFilterTypeEnum _$filterOptionObjectFilterTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'DATE':
      return _$filterOptionObjectFilterTypeEnum_DATE;
    case 'DATE_RANGE':
      return _$filterOptionObjectFilterTypeEnum_DATE_RANGE;
    case 'DATE_TIME_RANGE':
      return _$filterOptionObjectFilterTypeEnum_DATE_TIME_RANGE;
    case 'NUMBER':
      return _$filterOptionObjectFilterTypeEnum_NUMBER;
    case 'NUMBER_RANGE':
      return _$filterOptionObjectFilterTypeEnum_NUMBER_RANGE;
    case 'NUMBER_OPTIONS':
      return _$filterOptionObjectFilterTypeEnum_NUMBER_OPTIONS;
    case 'TEXT':
      return _$filterOptionObjectFilterTypeEnum_TEXT;
    case 'TEXT_CONTENT':
      return _$filterOptionObjectFilterTypeEnum_TEXT_CONTENT;
    case 'TEXT_OPTIONS':
      return _$filterOptionObjectFilterTypeEnum_TEXT_OPTIONS;
    case 'BOOLEAN_OPTIONS':
      return _$filterOptionObjectFilterTypeEnum_BOOLEAN_OPTIONS;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FilterOptionObjectFilterTypeEnum>
_$filterOptionObjectFilterTypeEnumValues =
    BuiltSet<FilterOptionObjectFilterTypeEnum>(
      const <FilterOptionObjectFilterTypeEnum>[
        _$filterOptionObjectFilterTypeEnum_DATE,
        _$filterOptionObjectFilterTypeEnum_DATE_RANGE,
        _$filterOptionObjectFilterTypeEnum_DATE_TIME_RANGE,
        _$filterOptionObjectFilterTypeEnum_NUMBER,
        _$filterOptionObjectFilterTypeEnum_NUMBER_RANGE,
        _$filterOptionObjectFilterTypeEnum_NUMBER_OPTIONS,
        _$filterOptionObjectFilterTypeEnum_TEXT,
        _$filterOptionObjectFilterTypeEnum_TEXT_CONTENT,
        _$filterOptionObjectFilterTypeEnum_TEXT_OPTIONS,
        _$filterOptionObjectFilterTypeEnum_BOOLEAN_OPTIONS,
      ],
    );

Serializer<FilterOptionObjectFilterTypeEnum>
_$filterOptionObjectFilterTypeEnumSerializer =
    _$FilterOptionObjectFilterTypeEnumSerializer();

class _$FilterOptionObjectFilterTypeEnumSerializer
    implements PrimitiveSerializer<FilterOptionObjectFilterTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DATE': 'DATE',
    'DATE_RANGE': 'DATE_RANGE',
    'DATE_TIME_RANGE': 'DATE_TIME_RANGE',
    'NUMBER': 'NUMBER',
    'NUMBER_RANGE': 'NUMBER_RANGE',
    'NUMBER_OPTIONS': 'NUMBER_OPTIONS',
    'TEXT': 'TEXT',
    'TEXT_CONTENT': 'TEXT_CONTENT',
    'TEXT_OPTIONS': 'TEXT_OPTIONS',
    'BOOLEAN_OPTIONS': 'BOOLEAN_OPTIONS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DATE': 'DATE',
    'DATE_RANGE': 'DATE_RANGE',
    'DATE_TIME_RANGE': 'DATE_TIME_RANGE',
    'NUMBER': 'NUMBER',
    'NUMBER_RANGE': 'NUMBER_RANGE',
    'NUMBER_OPTIONS': 'NUMBER_OPTIONS',
    'TEXT': 'TEXT',
    'TEXT_CONTENT': 'TEXT_CONTENT',
    'TEXT_OPTIONS': 'TEXT_OPTIONS',
    'BOOLEAN_OPTIONS': 'BOOLEAN_OPTIONS',
  };

  @override
  final Iterable<Type> types = const <Type>[FilterOptionObjectFilterTypeEnum];
  @override
  final String wireName = 'FilterOptionObjectFilterTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    FilterOptionObjectFilterTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FilterOptionObjectFilterTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FilterOptionObjectFilterTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$FilterOptionObject extends FilterOptionObject {
  @override
  final String? key;
  @override
  final BuiltList<JsonObject>? options;
  @override
  final JsonObject? min;
  @override
  final JsonObject? max;
  @override
  final FilterOptionObjectFilterTypeEnum? filterType;

  factory _$FilterOptionObject([
    void Function(FilterOptionObjectBuilder)? updates,
  ]) => (FilterOptionObjectBuilder()..update(updates))._build();

  _$FilterOptionObject._({
    this.key,
    this.options,
    this.min,
    this.max,
    this.filterType,
  }) : super._();
  @override
  FilterOptionObject rebuild(
    void Function(FilterOptionObjectBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FilterOptionObjectBuilder toBuilder() =>
      FilterOptionObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterOptionObject &&
        key == other.key &&
        options == other.options &&
        min == other.min &&
        max == other.max &&
        filterType == other.filterType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, filterType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilterOptionObject')
          ..add('key', key)
          ..add('options', options)
          ..add('min', min)
          ..add('max', max)
          ..add('filterType', filterType))
        .toString();
  }
}

class FilterOptionObjectBuilder
    implements Builder<FilterOptionObject, FilterOptionObjectBuilder> {
  _$FilterOptionObject? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  ListBuilder<JsonObject>? _options;
  ListBuilder<JsonObject> get options =>
      _$this._options ??= ListBuilder<JsonObject>();
  set options(ListBuilder<JsonObject>? options) => _$this._options = options;

  JsonObject? _min;
  JsonObject? get min => _$this._min;
  set min(JsonObject? min) => _$this._min = min;

  JsonObject? _max;
  JsonObject? get max => _$this._max;
  set max(JsonObject? max) => _$this._max = max;

  FilterOptionObjectFilterTypeEnum? _filterType;
  FilterOptionObjectFilterTypeEnum? get filterType => _$this._filterType;
  set filterType(FilterOptionObjectFilterTypeEnum? filterType) =>
      _$this._filterType = filterType;

  FilterOptionObjectBuilder() {
    FilterOptionObject._defaults(this);
  }

  FilterOptionObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _options = $v.options?.toBuilder();
      _min = $v.min;
      _max = $v.max;
      _filterType = $v.filterType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterOptionObject other) {
    _$v = other as _$FilterOptionObject;
  }

  @override
  void update(void Function(FilterOptionObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterOptionObject build() => _build();

  _$FilterOptionObject _build() {
    _$FilterOptionObject _$result;
    try {
      _$result =
          _$v ??
          _$FilterOptionObject._(
            key: key,
            options: _options?.build(),
            min: min,
            max: max,
            filterType: filterType,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FilterOptionObject',
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
