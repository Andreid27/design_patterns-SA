//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_profile_attribute_group_metadata.g.dart';

/// UserProfileAttributeGroupMetadata
///
/// Properties:
/// * [name] 
/// * [displayHeader] 
/// * [displayDescription] 
/// * [annotations] 
@BuiltValue()
abstract class UserProfileAttributeGroupMetadata implements Built<UserProfileAttributeGroupMetadata, UserProfileAttributeGroupMetadataBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'displayHeader')
  String? get displayHeader;

  @BuiltValueField(wireName: r'displayDescription')
  String? get displayDescription;

  @BuiltValueField(wireName: r'annotations')
  BuiltMap<String, JsonObject>? get annotations;

  UserProfileAttributeGroupMetadata._();

  factory UserProfileAttributeGroupMetadata([void updates(UserProfileAttributeGroupMetadataBuilder b)]) = _$UserProfileAttributeGroupMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserProfileAttributeGroupMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserProfileAttributeGroupMetadata> get serializer => _$UserProfileAttributeGroupMetadataSerializer();
}

class _$UserProfileAttributeGroupMetadataSerializer implements PrimitiveSerializer<UserProfileAttributeGroupMetadata> {
  @override
  final Iterable<Type> types = const [UserProfileAttributeGroupMetadata, _$UserProfileAttributeGroupMetadata];

  @override
  final String wireName = r'UserProfileAttributeGroupMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserProfileAttributeGroupMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayHeader != null) {
      yield r'displayHeader';
      yield serializers.serialize(
        object.displayHeader,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayDescription != null) {
      yield r'displayDescription';
      yield serializers.serialize(
        object.displayDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.annotations != null) {
      yield r'annotations';
      yield serializers.serialize(
        object.annotations,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserProfileAttributeGroupMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserProfileAttributeGroupMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'displayHeader':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayHeader = valueDes;
          break;
        case r'displayDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayDescription = valueDes;
          break;
        case r'annotations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)]),
          ) as BuiltMap<String, JsonObject>;
          result.annotations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserProfileAttributeGroupMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserProfileAttributeGroupMetadataBuilder();
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

