//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_link_representation.g.dart';

/// SocialLinkRepresentation
///
/// Properties:
/// * [socialProvider] 
/// * [socialUserId] 
/// * [socialUsername] 
@BuiltValue()
abstract class SocialLinkRepresentation implements Built<SocialLinkRepresentation, SocialLinkRepresentationBuilder> {
  @BuiltValueField(wireName: r'socialProvider')
  String? get socialProvider;

  @BuiltValueField(wireName: r'socialUserId')
  String? get socialUserId;

  @BuiltValueField(wireName: r'socialUsername')
  String? get socialUsername;

  SocialLinkRepresentation._();

  factory SocialLinkRepresentation([void updates(SocialLinkRepresentationBuilder b)]) = _$SocialLinkRepresentation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialLinkRepresentationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialLinkRepresentation> get serializer => _$SocialLinkRepresentationSerializer();
}

class _$SocialLinkRepresentationSerializer implements PrimitiveSerializer<SocialLinkRepresentation> {
  @override
  final Iterable<Type> types = const [SocialLinkRepresentation, _$SocialLinkRepresentation];

  @override
  final String wireName = r'SocialLinkRepresentation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialLinkRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.socialProvider != null) {
      yield r'socialProvider';
      yield serializers.serialize(
        object.socialProvider,
        specifiedType: const FullType(String),
      );
    }
    if (object.socialUserId != null) {
      yield r'socialUserId';
      yield serializers.serialize(
        object.socialUserId,
        specifiedType: const FullType(String),
      );
    }
    if (object.socialUsername != null) {
      yield r'socialUsername';
      yield serializers.serialize(
        object.socialUsername,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialLinkRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SocialLinkRepresentationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'socialProvider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.socialProvider = valueDes;
          break;
        case r'socialUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.socialUserId = valueDes;
          break;
        case r'socialUsername':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.socialUsername = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialLinkRepresentation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialLinkRepresentationBuilder();
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

