//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_criteria_object.g.dart';

/// FilterCriteriaObject
///
/// Properties:
/// * [key] 
/// * [operation] 
/// * [value] 
/// * [values] 
@BuiltValue()
abstract class FilterCriteriaObject implements Built<FilterCriteriaObject, FilterCriteriaObjectBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'operation')
  FilterCriteriaObjectOperationEnum? get operation;
  // enum operationEnum {  CUSTOM,  EQUAL,  NOT_EQUAL,  GREATER,  GREATER_OR_EQUAL,  LESS,  LESS_OR_EQUAL,  LIKE,  BEGINS_WITH,  ENDS_WITH,  IN,  NOT_IN,  IS_NULL,  IS_NOT_NULL,  };

  @BuiltValueField(wireName: r'value')
  JsonObject? get value;

  @BuiltValueField(wireName: r'values')
  BuiltList<JsonObject>? get values;

  FilterCriteriaObject._();

  factory FilterCriteriaObject([void updates(FilterCriteriaObjectBuilder b)]) = _$FilterCriteriaObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterCriteriaObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterCriteriaObject> get serializer => _$FilterCriteriaObjectSerializer();
}

class _$FilterCriteriaObjectSerializer implements PrimitiveSerializer<FilterCriteriaObject> {
  @override
  final Iterable<Type> types = const [FilterCriteriaObject, _$FilterCriteriaObject];

  @override
  final String wireName = r'FilterCriteriaObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterCriteriaObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.operation != null) {
      yield r'operation';
      yield serializers.serialize(
        object.operation,
        specifiedType: const FullType(FilterCriteriaObjectOperationEnum),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.values != null) {
      yield r'values';
      yield serializers.serialize(
        object.values,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterCriteriaObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterCriteriaObjectBuilder result,
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
        case r'operation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilterCriteriaObjectOperationEnum),
          ) as FilterCriteriaObjectOperationEnum;
          result.operation = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.value = valueDes;
          break;
        case r'values':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.values.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilterCriteriaObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterCriteriaObjectBuilder();
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

class FilterCriteriaObjectOperationEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CUSTOM')
  static const FilterCriteriaObjectOperationEnum CUSTOM = _$filterCriteriaObjectOperationEnum_CUSTOM;
  @BuiltValueEnumConst(wireName: r'EQUAL')
  static const FilterCriteriaObjectOperationEnum EQUAL = _$filterCriteriaObjectOperationEnum_EQUAL;
  @BuiltValueEnumConst(wireName: r'NOT_EQUAL')
  static const FilterCriteriaObjectOperationEnum NOT_EQUAL = _$filterCriteriaObjectOperationEnum_NOT_EQUAL;
  @BuiltValueEnumConst(wireName: r'GREATER')
  static const FilterCriteriaObjectOperationEnum GREATER = _$filterCriteriaObjectOperationEnum_GREATER;
  @BuiltValueEnumConst(wireName: r'GREATER_OR_EQUAL')
  static const FilterCriteriaObjectOperationEnum GREATER_OR_EQUAL = _$filterCriteriaObjectOperationEnum_GREATER_OR_EQUAL;
  @BuiltValueEnumConst(wireName: r'LESS')
  static const FilterCriteriaObjectOperationEnum LESS = _$filterCriteriaObjectOperationEnum_LESS;
  @BuiltValueEnumConst(wireName: r'LESS_OR_EQUAL')
  static const FilterCriteriaObjectOperationEnum LESS_OR_EQUAL = _$filterCriteriaObjectOperationEnum_LESS_OR_EQUAL;
  @BuiltValueEnumConst(wireName: r'LIKE')
  static const FilterCriteriaObjectOperationEnum LIKE = _$filterCriteriaObjectOperationEnum_LIKE;
  @BuiltValueEnumConst(wireName: r'BEGINS_WITH')
  static const FilterCriteriaObjectOperationEnum BEGINS_WITH = _$filterCriteriaObjectOperationEnum_BEGINS_WITH;
  @BuiltValueEnumConst(wireName: r'ENDS_WITH')
  static const FilterCriteriaObjectOperationEnum ENDS_WITH = _$filterCriteriaObjectOperationEnum_ENDS_WITH;
  @BuiltValueEnumConst(wireName: r'IN')
  static const FilterCriteriaObjectOperationEnum IN = _$filterCriteriaObjectOperationEnum_IN;
  @BuiltValueEnumConst(wireName: r'NOT_IN')
  static const FilterCriteriaObjectOperationEnum NOT_IN = _$filterCriteriaObjectOperationEnum_NOT_IN;
  @BuiltValueEnumConst(wireName: r'IS_NULL')
  static const FilterCriteriaObjectOperationEnum IS_NULL = _$filterCriteriaObjectOperationEnum_IS_NULL;
  @BuiltValueEnumConst(wireName: r'IS_NOT_NULL')
  static const FilterCriteriaObjectOperationEnum IS_NOT_NULL = _$filterCriteriaObjectOperationEnum_IS_NOT_NULL;

  static Serializer<FilterCriteriaObjectOperationEnum> get serializer => _$filterCriteriaObjectOperationEnumSerializer;

  const FilterCriteriaObjectOperationEnum._(String name): super(name);

  static BuiltSet<FilterCriteriaObjectOperationEnum> get values => _$filterCriteriaObjectOperationEnumValues;
  static FilterCriteriaObjectOperationEnum valueOf(String name) => _$filterCriteriaObjectOperationEnumValueOf(name);
}

