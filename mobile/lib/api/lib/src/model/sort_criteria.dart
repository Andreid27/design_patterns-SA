//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sort_criteria.g.dart';

/// SortCriteria
///
/// Properties:
/// * [key] 
/// * [direction] 
@BuiltValue()
abstract class SortCriteria implements Built<SortCriteria, SortCriteriaBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'direction')
  SortCriteriaDirectionEnum? get direction;
  // enum directionEnum {  ASC,  DESC,  };

  SortCriteria._();

  factory SortCriteria([void updates(SortCriteriaBuilder b)]) = _$SortCriteria;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SortCriteriaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SortCriteria> get serializer => _$SortCriteriaSerializer();
}

class _$SortCriteriaSerializer implements PrimitiveSerializer<SortCriteria> {
  @override
  final Iterable<Type> types = const [SortCriteria, _$SortCriteria];

  @override
  final String wireName = r'SortCriteria';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SortCriteria object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(SortCriteriaDirectionEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SortCriteria object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SortCriteriaBuilder result,
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
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SortCriteriaDirectionEnum),
          ) as SortCriteriaDirectionEnum;
          result.direction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SortCriteria deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SortCriteriaBuilder();
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

class SortCriteriaDirectionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ASC')
  static const SortCriteriaDirectionEnum ASC = _$sortCriteriaDirectionEnum_ASC;
  @BuiltValueEnumConst(wireName: r'DESC')
  static const SortCriteriaDirectionEnum DESC = _$sortCriteriaDirectionEnum_DESC;

  static Serializer<SortCriteriaDirectionEnum> get serializer => _$sortCriteriaDirectionEnumSerializer;

  const SortCriteriaDirectionEnum._(String name): super(name);

  static BuiltSet<SortCriteriaDirectionEnum> get values => _$sortCriteriaDirectionEnumValues;
  static SortCriteriaDirectionEnum valueOf(String name) => _$sortCriteriaDirectionEnumValueOf(name);
}

