//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quiz_student.g.dart';

/// QuizStudent
///
/// Properties:
/// * [id] 
/// * [creation] 
/// * [expires] 
/// * [modified] 
/// * [userId] 
/// * [quizId] 
/// * [createdBy] 
/// * [startAfter] 
/// * [startAt] 
/// * [endTime] 
/// * [endedTime] 
/// * [correctAnswers] 
@BuiltValue()
abstract class QuizStudent implements Built<QuizStudent, QuizStudentBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'creation')
  DateTime? get creation;

  @BuiltValueField(wireName: r'expires')
  DateTime? get expires;

  @BuiltValueField(wireName: r'modified')
  DateTime? get modified;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'quizId')
  String? get quizId;

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'startAfter')
  DateTime? get startAfter;

  @BuiltValueField(wireName: r'startAt')
  DateTime? get startAt;

  @BuiltValueField(wireName: r'endTime')
  DateTime? get endTime;

  @BuiltValueField(wireName: r'endedTime')
  DateTime? get endedTime;

  @BuiltValueField(wireName: r'correctAnswers')
  int? get correctAnswers;

  QuizStudent._();

  factory QuizStudent([void updates(QuizStudentBuilder b)]) = _$QuizStudent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuizStudentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuizStudent> get serializer => _$QuizStudentSerializer();
}

class _$QuizStudentSerializer implements PrimitiveSerializer<QuizStudent> {
  @override
  final Iterable<Type> types = const [QuizStudent, _$QuizStudent];

  @override
  final String wireName = r'QuizStudent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuizStudent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.creation != null) {
      yield r'creation';
      yield serializers.serialize(
        object.creation,
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
    if (object.modified != null) {
      yield r'modified';
      yield serializers.serialize(
        object.modified,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.quizId != null) {
      yield r'quizId';
      yield serializers.serialize(
        object.quizId,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
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
    if (object.startAt != null) {
      yield r'startAt';
      yield serializers.serialize(
        object.startAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.endedTime != null) {
      yield r'endedTime';
      yield serializers.serialize(
        object.endedTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.correctAnswers != null) {
      yield r'correctAnswers';
      yield serializers.serialize(
        object.correctAnswers,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuizStudent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuizStudentBuilder result,
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
        case r'creation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.creation = valueDes;
          break;
        case r'expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expires = valueDes;
          break;
        case r'modified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.modified = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'quizId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quizId = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdBy = valueDes;
          break;
        case r'startAfter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startAfter = valueDes;
          break;
        case r'startAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startAt = valueDes;
          break;
        case r'endTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endTime = valueDes;
          break;
        case r'endedTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endedTime = valueDes;
          break;
        case r'correctAnswers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.correctAnswers = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuizStudent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuizStudentBuilder();
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

