// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_criteria.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SortCriteriaDirectionEnum _$sortCriteriaDirectionEnum_ASC =
    const SortCriteriaDirectionEnum._('ASC');
const SortCriteriaDirectionEnum _$sortCriteriaDirectionEnum_DESC =
    const SortCriteriaDirectionEnum._('DESC');

SortCriteriaDirectionEnum _$sortCriteriaDirectionEnumValueOf(String name) {
  switch (name) {
    case 'ASC':
      return _$sortCriteriaDirectionEnum_ASC;
    case 'DESC':
      return _$sortCriteriaDirectionEnum_DESC;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SortCriteriaDirectionEnum> _$sortCriteriaDirectionEnumValues =
    BuiltSet<SortCriteriaDirectionEnum>(const <SortCriteriaDirectionEnum>[
      _$sortCriteriaDirectionEnum_ASC,
      _$sortCriteriaDirectionEnum_DESC,
    ]);

Serializer<SortCriteriaDirectionEnum> _$sortCriteriaDirectionEnumSerializer =
    _$SortCriteriaDirectionEnumSerializer();

class _$SortCriteriaDirectionEnumSerializer
    implements PrimitiveSerializer<SortCriteriaDirectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ASC': 'ASC',
    'DESC': 'DESC',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ASC': 'ASC',
    'DESC': 'DESC',
  };

  @override
  final Iterable<Type> types = const <Type>[SortCriteriaDirectionEnum];
  @override
  final String wireName = 'SortCriteriaDirectionEnum';

  @override
  Object serialize(
    Serializers serializers,
    SortCriteriaDirectionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SortCriteriaDirectionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SortCriteriaDirectionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SortCriteria extends SortCriteria {
  @override
  final String? key;
  @override
  final SortCriteriaDirectionEnum? direction;

  factory _$SortCriteria([void Function(SortCriteriaBuilder)? updates]) =>
      (SortCriteriaBuilder()..update(updates))._build();

  _$SortCriteria._({this.key, this.direction}) : super._();
  @override
  SortCriteria rebuild(void Function(SortCriteriaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SortCriteriaBuilder toBuilder() => SortCriteriaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SortCriteria &&
        key == other.key &&
        direction == other.direction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SortCriteria')
          ..add('key', key)
          ..add('direction', direction))
        .toString();
  }
}

class SortCriteriaBuilder
    implements Builder<SortCriteria, SortCriteriaBuilder> {
  _$SortCriteria? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  SortCriteriaDirectionEnum? _direction;
  SortCriteriaDirectionEnum? get direction => _$this._direction;
  set direction(SortCriteriaDirectionEnum? direction) =>
      _$this._direction = direction;

  SortCriteriaBuilder() {
    SortCriteria._defaults(this);
  }

  SortCriteriaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _direction = $v.direction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SortCriteria other) {
    _$v = other as _$SortCriteria;
  }

  @override
  void update(void Function(SortCriteriaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SortCriteria build() => _build();

  _$SortCriteria _build() {
    final _$result = _$v ?? _$SortCriteria._(key: key, direction: direction);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
