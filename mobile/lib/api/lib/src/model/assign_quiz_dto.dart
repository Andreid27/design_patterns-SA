//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assign_quiz_dto.g.dart';

/// AssignQuizDTO
///
/// Properties:
/// * [quizId] 
/// * [userId] 
/// * [startAfter] 
/// * [expires] 
@BuiltValue()
abstract class AssignQuizDTO implements Built<AssignQuizDTO, AssignQuizDTOBuilder> {
  @BuiltValueField(wireName: r'quizId')
  String? get quizId;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'startAfter')
  DateTime? get startAfter;

  @BuiltValueField(wireName: r'expires')
  DateTime? get expires;

  AssignQuizDTO._();

  factory AssignQuizDTO([void updates(AssignQuizDTOBuilder b)]) = _$AssignQuizDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssignQuizDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssignQuizDTO> get serializer => _$AssignQuizDTOSerializer();
}

class _$AssignQuizDTOSerializer implements PrimitiveSerializer<AssignQuizDTO> {
  @override
  final Iterable<Type> types = const [AssignQuizDTO, _$AssignQuizDTO];

  @override
  final String wireName = r'AssignQuizDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssignQuizDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.quizId != null) {
      yield r'quizId';
      yield serializers.serialize(
        object.quizId,
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
    if (object.startAfter != null) {
      yield r'startAfter';
      yield serializers.serialize(
        object.startAfter,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.expires != null) {
      yield r'expires';
      yield serializers.serialize(
        object.expires,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssignQuizDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AssignQuizDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'quizId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quizId = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'startAfter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startAfter = valueDes;
          break;
        case r'expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expires = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssignQuizDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssignQuizDTOBuilder();
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

