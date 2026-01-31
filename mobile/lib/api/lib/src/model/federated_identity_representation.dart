//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'federated_identity_representation.g.dart';

/// FederatedIdentityRepresentation
///
/// Properties:
/// * [identityProvider] 
/// * [userId] 
/// * [userName] 
@BuiltValue()
abstract class FederatedIdentityRepresentation implements Built<FederatedIdentityRepresentation, FederatedIdentityRepresentationBuilder> {
  @BuiltValueField(wireName: r'identityProvider')
  String? get identityProvider;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'userName')
  String? get userName;

  FederatedIdentityRepresentation._();

  factory FederatedIdentityRepresentation([void updates(FederatedIdentityRepresentationBuilder b)]) = _$FederatedIdentityRepresentation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FederatedIdentityRepresentationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FederatedIdentityRepresentation> get serializer => _$FederatedIdentityRepresentationSerializer();
}

class _$FederatedIdentityRepresentationSerializer implements PrimitiveSerializer<FederatedIdentityRepresentation> {
  @override
  final Iterable<Type> types = const [FederatedIdentityRepresentation, _$FederatedIdentityRepresentation];

  @override
  final String wireName = r'FederatedIdentityRepresentation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FederatedIdentityRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.identityProvider != null) {
      yield r'identityProvider';
      yield serializers.serialize(
        object.identityProvider,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.userName != null) {
      yield r'userName';
      yield serializers.serialize(
        object.userName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FederatedIdentityRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FederatedIdentityRepresentationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'identityProvider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.identityProvider = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'userName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FederatedIdentityRepresentation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederatedIdentityRepresentationBuilder();
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

