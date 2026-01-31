//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_option_object.g.dart';

/// FilterOptionObject
///
/// Properties:
/// * [key] 
/// * [options] 
/// * [min] 
/// * [max] 
/// * [filterType] 
@BuiltValue()
abstract class FilterOptionObject implements Built<FilterOptionObject, FilterOptionObjectBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'options')
  BuiltList<JsonObject>? get options;

  @BuiltValueField(wireName: r'min')
  JsonObject? get min;

  @BuiltValueField(wireName: r'max')
  JsonObject? get max;

  @BuiltValueField(wireName: r'filterType')
  FilterOptionObjectFilterTypeEnum? get filterType;
  // enum filterTypeEnum {  DATE,  DATE_RANGE,  DATE_TIME_RANGE,  NUMBER,  NUMBER_RANGE,  NUMBER_OPTIONS,  TEXT,  TEXT_CONTENT,  TEXT_OPTIONS,  BOOLEAN_OPTIONS,  };

  FilterOptionObject._();

  factory FilterOptionObject([void updates(FilterOptionObjectBuilder b)]) = _$FilterOptionObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterOptionObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterOptionObject> get serializer => _$FilterOptionObjectSerializer();
}

class _$FilterOptionObjectSerializer implements PrimitiveSerializer<FilterOptionObject> {
  @override
  final Iterable<Type> types = const [FilterOptionObject, _$FilterOptionObject];

  @override
  final String wireName = r'FilterOptionObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterOptionObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.filterType != null) {
      yield r'filterType';
      yield serializers.serialize(
        object.filterType,
        specifiedType: const FullType(FilterOptionObjectFilterTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterOptionObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterOptionObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.options.replace(valueDes);
          break;
        case r'min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.min = valueDes;
          break;
        case r'max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.max = valueDes;
          break;
        case r'filterType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilterOptionObjectFilterTypeEnum),
          ) as FilterOptionObjectFilterTypeEnum;
          result.filterType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilterOptionObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterOptionObjectBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class FilterOptionObjectFilterTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'DATE')
  static const FilterOptionObjectFilterTypeEnum DATE = _$filterOptionObjectFilterTypeEnum_DATE;
  @BuiltValueEnumConst(wireName: r'DATE_RANGE')
  static const FilterOptionObjectFilterTypeEnum DATE_RANGE = _$filterOptionObjectFilterTypeEnum_DATE_RANGE;
  @BuiltValueEnumConst(wireName: r'DATE_TIME_RANGE')
  static const FilterOptionObjectFilterTypeEnum DATE_TIME_RANGE = _$filterOptionObjectFilterTypeEnum_DATE_TIME_RANGE;
  @BuiltValueEnumConst(wireName: r'NUMBER')
  static const FilterOptionObjectFilterTypeEnum NUMBER = _$filterOptionObjectFilterTypeEnum_NUMBER;
  @BuiltValueEnumConst(wireName: r'NUMBER_RANGE')
  static const FilterOptionObjectFilterTypeEnum NUMBER_RANGE = _$filterOptionObjectFilterTypeEnum_NUMBER_RANGE;
  @BuiltValueEnumConst(wireName: r'NUMBER_OPTIONS')
  static const FilterOptionObjectFilterTypeEnum NUMBER_OPTIONS = _$filterOptionObjectFilterTypeEnum_NUMBER_OPTIONS;
  @BuiltValueEnumConst(wireName: r'TEXT')
  static const FilterOptionObjectFilterTypeEnum TEXT = _$filterOptionObjectFilterTypeEnum_TEXT;
  @BuiltValueEnumConst(wireName: r'TEXT_CONTENT')
  static const FilterOptionObjectFilterTypeEnum TEXT_CONTENT = _$filterOptionObjectFilterTypeEnum_TEXT_CONTENT;
  @BuiltValueEnumConst(wireName: r'TEXT_OPTIONS')
  static const FilterOptionObjectFilterTypeEnum TEXT_OPTIONS = _$filterOptionObjectFilterTypeEnum_TEXT_OPTIONS;
  @BuiltValueEnumConst(wireName: r'BOOLEAN_OPTIONS')
  static const FilterOptionObjectFilterTypeEnum BOOLEAN_OPTIONS = _$filterOptionObjectFilterTypeEnum_BOOLEAN_OPTIONS;

  static Serializer<FilterOptionObjectFilterTypeEnum> get serializer => _$filterOptionObjectFilterTypeEnumSerializer;

  const FilterOptionObjectFilterTypeEnum._(String name): super(name);

  static BuiltSet<FilterOptionObjectFilterTypeEnum> get values => _$filterOptionObjectFilterTypeEnumValues;
  static FilterOptionObjectFilterTypeEnum valueOf(String name) => _$filterOptionObjectFilterTypeEnumValueOf(name);
}

