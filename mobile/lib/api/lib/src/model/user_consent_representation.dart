//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_consent_representation.g.dart';

/// UserConsentRepresentation
///
/// Properties:
/// * [clientId] 
/// * [grantedClientScopes] 
/// * [createdDate] 
/// * [lastUpdatedDate] 
/// * [grantedRealmRoles] 
@BuiltValue()
abstract class UserConsentRepresentation implements Built<UserConsentRepresentation, UserConsentRepresentationBuilder> {
  @BuiltValueField(wireName: r'clientId')
  String? get clientId;

  @BuiltValueField(wireName: r'grantedClientScopes')
  BuiltList<String>? get grantedClientScopes;

  @BuiltValueField(wireName: r'createdDate')
  int? get createdDate;

  @BuiltValueField(wireName: r'lastUpdatedDate')
  int? get lastUpdatedDate;

  @Deprecated('grantedRealmRoles has been deprecated')
  @BuiltValueField(wireName: r'grantedRealmRoles')
  BuiltList<String>? get grantedRealmRoles;

  UserConsentRepresentation._();

  factory UserConsentRepresentation([void updates(UserConsentRepresentationBuilder b)]) = _$UserConsentRepresentation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserConsentRepresentationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserConsentRepresentation> get serializer => _$UserConsentRepresentationSerializer();
}

class _$UserConsentRepresentationSerializer implements PrimitiveSerializer<UserConsentRepresentation> {
  @override
  final Iterable<Type> types = const [UserConsentRepresentation, _$UserConsentRepresentation];

  @override
  final String wireName = r'UserConsentRepresentation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserConsentRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.clientId != null) {
      yield r'clientId';
      yield serializers.serialize(
        object.clientId,
        specifiedType: const FullType(String),
      );
    }
    if (object.grantedClientScopes != null) {
      yield r'grantedClientScopes';
      yield serializers.serialize(
        object.grantedClientScopes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.createdDate != null) {
      yield r'createdDate';
      yield serializers.serialize(
        object.createdDate,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastUpdatedDate != null) {
      yield r'lastUpdatedDate';
      yield serializers.serialize(
        object.lastUpdatedDate,
        specifiedType: const FullType(int),
      );
    }
    if (object.grantedRealmRoles != null) {
      yield r'grantedRealmRoles';
      yield serializers.serialize(
        object.grantedRealmRoles,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserConsentRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserConsentRepresentationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'clientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        case r'grantedClientScopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.grantedClientScopes.replace(valueDes);
          break;
        case r'createdDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdDate = valueDes;
          break;
        case r'lastUpdatedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastUpdatedDate = valueDes;
          break;
        case r'grantedRealmRoles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.grantedRealmRoles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserConsentRepresentation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserConsentRepresentationBuilder();
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

