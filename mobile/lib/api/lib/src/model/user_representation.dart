//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/federated_identity_representation.dart';
import 'package:openapi/src/model/social_link_representation.dart';
import 'package:openapi/src/model/user_consent_representation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/credential_representation.dart';
import 'package:openapi/src/model/user_profile_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_representation.g.dart';

/// UserRepresentation
///
/// Properties:
/// * [id] 
/// * [username] 
/// * [firstName] 
/// * [lastName] 
/// * [email] 
/// * [emailVerified] 
/// * [attributes] 
/// * [userProfileMetadata] 
/// * [self] 
/// * [origin] 
/// * [createdTimestamp] 
/// * [enabled] 
/// * [totp] 
/// * [federationLink] 
/// * [serviceAccountClientId] 
/// * [credentials] 
/// * [disableableCredentialTypes] 
/// * [requiredActions] 
/// * [federatedIdentities] 
/// * [realmRoles] 
/// * [clientRoles] 
/// * [clientConsents] 
/// * [notBefore] 
/// * [applicationRoles] 
/// * [socialLinks] 
/// * [groups] 
/// * [access] 
@BuiltValue()
abstract class UserRepresentation implements Built<UserRepresentation, UserRepresentationBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'emailVerified')
  bool? get emailVerified;

  @BuiltValueField(wireName: r'attributes')
  BuiltMap<String, BuiltList<String>>? get attributes;

  @BuiltValueField(wireName: r'userProfileMetadata')
  UserProfileMetadata? get userProfileMetadata;

  @BuiltValueField(wireName: r'self')
  String? get self;

  @BuiltValueField(wireName: r'origin')
  String? get origin;

  @BuiltValueField(wireName: r'createdTimestamp')
  int? get createdTimestamp;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @Deprecated('totp has been deprecated')
  @BuiltValueField(wireName: r'totp')
  bool? get totp;

  @BuiltValueField(wireName: r'federationLink')
  String? get federationLink;

  @BuiltValueField(wireName: r'serviceAccountClientId')
  String? get serviceAccountClientId;

  @BuiltValueField(wireName: r'credentials')
  BuiltList<CredentialRepresentation>? get credentials;

  @BuiltValueField(wireName: r'disableableCredentialTypes')
  BuiltSet<String>? get disableableCredentialTypes;

  @BuiltValueField(wireName: r'requiredActions')
  BuiltList<String>? get requiredActions;

  @BuiltValueField(wireName: r'federatedIdentities')
  BuiltList<FederatedIdentityRepresentation>? get federatedIdentities;

  @BuiltValueField(wireName: r'realmRoles')
  BuiltList<String>? get realmRoles;

  @BuiltValueField(wireName: r'clientRoles')
  BuiltMap<String, BuiltList<String>>? get clientRoles;

  @BuiltValueField(wireName: r'clientConsents')
  BuiltList<UserConsentRepresentation>? get clientConsents;

  @BuiltValueField(wireName: r'notBefore')
  int? get notBefore;

  @Deprecated('applicationRoles has been deprecated')
  @BuiltValueField(wireName: r'applicationRoles')
  BuiltMap<String, BuiltList<String>>? get applicationRoles;

  @Deprecated('socialLinks has been deprecated')
  @BuiltValueField(wireName: r'socialLinks')
  BuiltList<SocialLinkRepresentation>? get socialLinks;

  @BuiltValueField(wireName: r'groups')
  BuiltList<String>? get groups;

  @BuiltValueField(wireName: r'access')
  BuiltMap<String, bool>? get access;

  UserRepresentation._();

  factory UserRepresentation([void updates(UserRepresentationBuilder b)]) = _$UserRepresentation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserRepresentationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserRepresentation> get serializer => _$UserRepresentationSerializer();
}

class _$UserRepresentationSerializer implements PrimitiveSerializer<UserRepresentation> {
  @override
  final Iterable<Type> types = const [UserRepresentation, _$UserRepresentation];

  @override
  final String wireName = r'UserRepresentation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.emailVerified != null) {
      yield r'emailVerified';
      yield serializers.serialize(
        object.emailVerified,
        specifiedType: const FullType(bool),
      );
    }
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])]),
      );
    }
    if (object.userProfileMetadata != null) {
      yield r'userProfileMetadata';
      yield serializers.serialize(
        object.userProfileMetadata,
        specifiedType: const FullType(UserProfileMetadata),
      );
    }
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(String),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdTimestamp != null) {
      yield r'createdTimestamp';
      yield serializers.serialize(
        object.createdTimestamp,
        specifiedType: const FullType(int),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.totp != null) {
      yield r'totp';
      yield serializers.serialize(
        object.totp,
        specifiedType: const FullType(bool),
      );
    }
    if (object.federationLink != null) {
      yield r'federationLink';
      yield serializers.serialize(
        object.federationLink,
        specifiedType: const FullType(String),
      );
    }
    if (object.serviceAccountClientId != null) {
      yield r'serviceAccountClientId';
      yield serializers.serialize(
        object.serviceAccountClientId,
        specifiedType: const FullType(String),
      );
    }
    if (object.credentials != null) {
      yield r'credentials';
      yield serializers.serialize(
        object.credentials,
        specifiedType: const FullType(BuiltList, [FullType(CredentialRepresentation)]),
      );
    }
    if (object.disableableCredentialTypes != null) {
      yield r'disableableCredentialTypes';
      yield serializers.serialize(
        object.disableableCredentialTypes,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    if (object.requiredActions != null) {
      yield r'requiredActions';
      yield serializers.serialize(
        object.requiredActions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.federatedIdentities != null) {
      yield r'federatedIdentities';
      yield serializers.serialize(
        object.federatedIdentities,
        specifiedType: const FullType(BuiltList, [FullType(FederatedIdentityRepresentation)]),
      );
    }
    if (object.realmRoles != null) {
      yield r'realmRoles';
      yield serializers.serialize(
        object.realmRoles,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.clientRoles != null) {
      yield r'clientRoles';
      yield serializers.serialize(
        object.clientRoles,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])]),
      );
    }
    if (object.clientConsents != null) {
      yield r'clientConsents';
      yield serializers.serialize(
        object.clientConsents,
        specifiedType: const FullType(BuiltList, [FullType(UserConsentRepresentation)]),
      );
    }
    if (object.notBefore != null) {
      yield r'notBefore';
      yield serializers.serialize(
        object.notBefore,
        specifiedType: const FullType(int),
      );
    }
    if (object.applicationRoles != null) {
      yield r'applicationRoles';
      yield serializers.serialize(
        object.applicationRoles,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])]),
      );
    }
    if (object.socialLinks != null) {
      yield r'socialLinks';
      yield serializers.serialize(
        object.socialLinks,
        specifiedType: const FullType(BuiltList, [FullType(SocialLinkRepresentation)]),
      );
    }
    if (object.groups != null) {
      yield r'groups';
      yield serializers.serialize(
        object.groups,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.access != null) {
      yield r'access';
      yield serializers.serialize(
        object.access,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(bool)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserRepresentationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'emailVerified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.emailVerified = valueDes;
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])]),
          ) as BuiltMap<String, BuiltList<String>>;
          result.attributes.replace(valueDes);
          break;
        case r'userProfileMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserProfileMetadata),
          ) as UserProfileMetadata;
          result.userProfileMetadata.replace(valueDes);
          break;
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.self = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.origin = valueDes;
          break;
        case r'createdTimestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdTimestamp = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'totp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.totp = valueDes;
          break;
        case r'federationLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.federationLink = valueDes;
          break;
        case r'serviceAccountClientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceAccountClientId = valueDes;
          break;
        case r'credentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CredentialRepresentation)]),
          ) as BuiltList<CredentialRepresentation>;
          result.credentials.replace(valueDes);
          break;
        case r'disableableCredentialTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>;
          result.disableableCredentialTypes.replace(valueDes);
          break;
        case r'requiredActions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.requiredActions.replace(valueDes);
          break;
        case r'federatedIdentities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FederatedIdentityRepresentation)]),
          ) as BuiltList<FederatedIdentityRepresentation>;
          result.federatedIdentities.replace(valueDes);
          break;
        case r'realmRoles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.realmRoles.replace(valueDes);
          break;
        case r'clientRoles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])]),
          ) as BuiltMap<String, BuiltList<String>>;
          result.clientRoles.replace(valueDes);
          break;
        case r'clientConsents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserConsentRepresentation)]),
          ) as BuiltList<UserConsentRepresentation>;
          result.clientConsents.replace(valueDes);
          break;
        case r'notBefore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.notBefore = valueDes;
          break;
        case r'applicationRoles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])]),
          ) as BuiltMap<String, BuiltList<String>>;
          result.applicationRoles.replace(valueDes);
          break;
        case r'socialLinks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SocialLinkRepresentation)]),
          ) as BuiltList<SocialLinkRepresentation>;
          result.socialLinks.replace(valueDes);
          break;
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.groups.replace(valueDes);
          break;
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(bool)]),
          ) as BuiltMap<String, bool>;
          result.access.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserRepresentation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserRepresentationBuilder();
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

