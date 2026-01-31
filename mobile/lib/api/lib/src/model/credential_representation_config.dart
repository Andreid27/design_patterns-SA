//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_representation_config.g.dart';

/// CredentialRepresentationConfig
///
/// Properties:
/// * [empty] 
@Deprecated('CredentialRepresentationConfig has been deprecated')
@BuiltValue()
abstract class CredentialRepresentationConfig implements Built<CredentialRepresentationConfig, CredentialRepresentationConfigBuilder> {
  @BuiltValueField(wireName: r'empty')
  bool? get empty;

  CredentialRepresentationConfig._();

  factory CredentialRepresentationConfig([void updates(CredentialRepresentationConfigBuilder b)]) = _$CredentialRepresentationConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialRepresentationConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialRepresentationConfig> get serializer => _$CredentialRepresentationConfigSerializer();
}

class _$CredentialRepresentationConfigSerializer implements PrimitiveSerializer<CredentialRepresentationConfig> {
  @override
  final Iterable<Type> types = const [CredentialRepresentationConfig, _$CredentialRepresentationConfig];

  @override
  final String wireName = r'CredentialRepresentationConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialRepresentationConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.empty != null) {
      yield r'empty';
      yield serializers.serialize(
        object.empty,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialRepresentationConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialRepresentationConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'empty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.empty = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialRepresentationConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialRepresentationConfigBuilder();
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

