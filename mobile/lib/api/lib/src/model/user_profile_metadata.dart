//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/user_profile_attribute_group_metadata.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/user_profile_attribute_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_profile_metadata.g.dart';

/// UserProfileMetadata
///
/// Properties:
/// * [attributes] 
/// * [groups] 
@BuiltValue()
abstract class UserProfileMetadata implements Built<UserProfileMetadata, UserProfileMetadataBuilder> {
  @BuiltValueField(wireName: r'attributes')
  BuiltList<UserProfileAttributeMetadata>? get attributes;

  @BuiltValueField(wireName: r'groups')
  BuiltList<UserProfileAttributeGroupMetadata>? get groups;

  UserProfileMetadata._();

  factory UserProfileMetadata([void updates(UserProfileMetadataBuilder b)]) = _$UserProfileMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserProfileMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserProfileMetadata> get serializer => _$UserProfileMetadataSerializer();
}

class _$UserProfileMetadataSerializer implements PrimitiveSerializer<UserProfileMetadata> {
  @override
  final Iterable<Type> types = const [UserProfileMetadata, _$UserProfileMetadata];

  @override
  final String wireName = r'UserProfileMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserProfileMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(BuiltList, [FullType(UserProfileAttributeMetadata)]),
      );
    }
    if (object.groups != null) {
      yield r'groups';
      yield serializers.serialize(
        object.groups,
        specifiedType: const FullType(BuiltList, [FullType(UserProfileAttributeGroupMetadata)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserProfileMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserProfileMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserProfileAttributeMetadata)]),
          ) as BuiltList<UserProfileAttributeMetadata>;
          result.attributes.replace(valueDes);
          break;
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserProfileAttributeGroupMetadata)]),
          ) as BuiltList<UserProfileAttributeGroupMetadata>;
          result.groups.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserProfileMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserProfileMetadataBuilder();
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

