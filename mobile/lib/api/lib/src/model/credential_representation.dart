//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/credential_representation_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_representation.g.dart';

/// CredentialRepresentation
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [userLabel] 
/// * [createdDate] 
/// * [secretData] 
/// * [credentialData] 
/// * [priority] 
/// * [value] 
/// * [temporary] 
/// * [device] 
/// * [hashedSaltedValue] 
/// * [salt] 
/// * [hashIterations] 
/// * [counter] 
/// * [algorithm] 
/// * [digits] 
/// * [period] 
/// * [config] 
@BuiltValue()
abstract class CredentialRepresentation implements Built<CredentialRepresentation, CredentialRepresentationBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'userLabel')
  String? get userLabel;

  @BuiltValueField(wireName: r'createdDate')
  int? get createdDate;

  @BuiltValueField(wireName: r'secretData')
  String? get secretData;

  @BuiltValueField(wireName: r'credentialData')
  String? get credentialData;

  @BuiltValueField(wireName: r'priority')
  int? get priority;

  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'temporary')
  bool? get temporary;

  @Deprecated('device has been deprecated')
  @BuiltValueField(wireName: r'device')
  String? get device;

  @Deprecated('hashedSaltedValue has been deprecated')
  @BuiltValueField(wireName: r'hashedSaltedValue')
  String? get hashedSaltedValue;

  @Deprecated('salt has been deprecated')
  @BuiltValueField(wireName: r'salt')
  String? get salt;

  @Deprecated('hashIterations has been deprecated')
  @BuiltValueField(wireName: r'hashIterations')
  int? get hashIterations;

  @Deprecated('counter has been deprecated')
  @BuiltValueField(wireName: r'counter')
  int? get counter;

  @Deprecated('algorithm has been deprecated')
  @BuiltValueField(wireName: r'algorithm')
  String? get algorithm;

  @Deprecated('digits has been deprecated')
  @BuiltValueField(wireName: r'digits')
  int? get digits;

  @Deprecated('period has been deprecated')
  @BuiltValueField(wireName: r'period')
  int? get period;

  @Deprecated('config has been deprecated')
  @BuiltValueField(wireName: r'config')
  CredentialRepresentationConfig? get config;

  CredentialRepresentation._();

  factory CredentialRepresentation([void updates(CredentialRepresentationBuilder b)]) = _$CredentialRepresentation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialRepresentationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialRepresentation> get serializer => _$CredentialRepresentationSerializer();
}

class _$CredentialRepresentationSerializer implements PrimitiveSerializer<CredentialRepresentation> {
  @override
  final Iterable<Type> types = const [CredentialRepresentation, _$CredentialRepresentation];

  @override
  final String wireName = r'CredentialRepresentation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.userLabel != null) {
      yield r'userLabel';
      yield serializers.serialize(
        object.userLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdDate != null) {
      yield r'createdDate';
      yield serializers.serialize(
        object.createdDate,
        specifiedType: const FullType(int),
      );
    }
    if (object.secretData != null) {
      yield r'secretData';
      yield serializers.serialize(
        object.secretData,
        specifiedType: const FullType(String),
      );
    }
    if (object.credentialData != null) {
      yield r'credentialData';
      yield serializers.serialize(
        object.credentialData,
        specifiedType: const FullType(String),
      );
    }
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType(int),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
    if (object.temporary != null) {
      yield r'temporary';
      yield serializers.serialize(
        object.temporary,
        specifiedType: const FullType(bool),
      );
    }
    if (object.device != null) {
      yield r'device';
      yield serializers.serialize(
        object.device,
        specifiedType: const FullType(String),
      );
    }
    if (object.hashedSaltedValue != null) {
      yield r'hashedSaltedValue';
      yield serializers.serialize(
        object.hashedSaltedValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.salt != null) {
      yield r'salt';
      yield serializers.serialize(
        object.salt,
        specifiedType: const FullType(String),
      );
    }
    if (object.hashIterations != null) {
      yield r'hashIterations';
      yield serializers.serialize(
        object.hashIterations,
        specifiedType: const FullType(int),
      );
    }
    if (object.counter != null) {
      yield r'counter';
      yield serializers.serialize(
        object.counter,
        specifiedType: const FullType(int),
      );
    }
    if (object.algorithm != null) {
      yield r'algorithm';
      yield serializers.serialize(
        object.algorithm,
        specifiedType: const FullType(String),
      );
    }
    if (object.digits != null) {
      yield r'digits';
      yield serializers.serialize(
        object.digits,
        specifiedType: const FullType(int),
      );
    }
    if (object.period != null) {
      yield r'period';
      yield serializers.serialize(
        object.period,
        specifiedType: const FullType(int),
      );
    }
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(CredentialRepresentationConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialRepresentationBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'userLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userLabel = valueDes;
          break;
        case r'createdDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdDate = valueDes;
          break;
        case r'secretData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.secretData = valueDes;
          break;
        case r'credentialData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialData = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.priority = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'temporary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.temporary = valueDes;
          break;
        case r'device':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.device = valueDes;
          break;
        case r'hashedSaltedValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hashedSaltedValue = valueDes;
          break;
        case r'salt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.salt = valueDes;
          break;
        case r'hashIterations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.hashIterations = valueDes;
          break;
        case r'counter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.counter = valueDes;
          break;
        case r'algorithm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.algorithm = valueDes;
          break;
        case r'digits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.digits = valueDes;
          break;
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.period = valueDes;
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialRepresentationConfig),
          ) as CredentialRepresentationConfig;
          result.config = valueDes.toBuilder();
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialRepresentation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialRepresentationBuilder();
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

