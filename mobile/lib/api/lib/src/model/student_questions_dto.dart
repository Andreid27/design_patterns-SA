//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student_questions_dto.g.dart';

/// StudentQuestionsDTO
///
/// Properties:
/// * [totalQuestions] 
/// * [correctQuestions] 
@BuiltValue()
abstract class StudentQuestionsDTO implements Built<StudentQuestionsDTO, StudentQuestionsDTOBuilder> {
  @BuiltValueField(wireName: r'totalQuestions')
  int? get totalQuestions;

  @BuiltValueField(wireName: r'correctQuestions')
  int? get correctQuestions;

  StudentQuestionsDTO._();

  factory StudentQuestionsDTO([void updates(StudentQuestionsDTOBuilder b)]) = _$StudentQuestionsDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StudentQuestionsDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StudentQuestionsDTO> get serializer => _$StudentQuestionsDTOSerializer();
}

class _$StudentQuestionsDTOSerializer implements PrimitiveSerializer<StudentQuestionsDTO> {
  @override
  final Iterable<Type> types = const [StudentQuestionsDTO, _$StudentQuestionsDTO];

  @override
  final String wireName = r'StudentQuestionsDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StudentQuestionsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalQuestions != null) {
      yield r'totalQuestions';
      yield serializers.serialize(
        object.totalQuestions,
        specifiedType: const FullType(int),
      );
    }
    if (object.correctQuestions != null) {
      yield r'correctQuestions';
      yield serializers.serialize(
        object.correctQuestions,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StudentQuestionsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StudentQuestionsDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalQuestions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalQuestions = valueDes;
          break;
        case r'correctQuestions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.correctQuestions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StudentQuestionsDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StudentQuestionsDTOBuilder();
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

