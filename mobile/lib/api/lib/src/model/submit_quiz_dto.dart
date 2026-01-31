//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/quiz_dto.dart';
import 'package:openapi/src/model/submited_question_answer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'submit_quiz_dto.g.dart';

/// SubmitQuizDTO
///
/// Properties:
/// * [quizStudentId] 
/// * [submitedQuestionAnswers] 
/// * [quiz] 
/// * [correctAnswers] 
/// * [startedAt] 
/// * [enddedAt] 
/// * [correctCount] 
/// * [studentId] 
@BuiltValue()
abstract class SubmitQuizDTO implements Built<SubmitQuizDTO, SubmitQuizDTOBuilder> {
  @BuiltValueField(wireName: r'quizStudentId')
  String? get quizStudentId;

  @BuiltValueField(wireName: r'submitedQuestionAnswers')
  BuiltList<SubmitedQuestionAnswer>? get submitedQuestionAnswers;

  @BuiltValueField(wireName: r'quiz')
  QuizDTO? get quiz;

  @BuiltValueField(wireName: r'correctAnswers')
  BuiltList<SubmitedQuestionAnswer>? get correctAnswers;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'enddedAt')
  DateTime? get enddedAt;

  @BuiltValueField(wireName: r'correctCount')
  int? get correctCount;

  @BuiltValueField(wireName: r'studentId')
  String? get studentId;

  SubmitQuizDTO._();

  factory SubmitQuizDTO([void updates(SubmitQuizDTOBuilder b)]) = _$SubmitQuizDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubmitQuizDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubmitQuizDTO> get serializer => _$SubmitQuizDTOSerializer();
}

class _$SubmitQuizDTOSerializer implements PrimitiveSerializer<SubmitQuizDTO> {
  @override
  final Iterable<Type> types = const [SubmitQuizDTO, _$SubmitQuizDTO];

  @override
  final String wireName = r'SubmitQuizDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubmitQuizDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.quizStudentId != null) {
      yield r'quizStudentId';
      yield serializers.serialize(
        object.quizStudentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.submitedQuestionAnswers != null) {
      yield r'submitedQuestionAnswers';
      yield serializers.serialize(
        object.submitedQuestionAnswers,
        specifiedType: const FullType(BuiltList, [FullType(SubmitedQuestionAnswer)]),
      );
    }
    if (object.quiz != null) {
      yield r'quiz';
      yield serializers.serialize(
        object.quiz,
        specifiedType: const FullType(QuizDTO),
      );
    }
    if (object.correctAnswers != null) {
      yield r'correctAnswers';
      yield serializers.serialize(
        object.correctAnswers,
        specifiedType: const FullType(BuiltList, [FullType(SubmitedQuestionAnswer)]),
      );
    }
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.enddedAt != null) {
      yield r'enddedAt';
      yield serializers.serialize(
        object.enddedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.correctCount != null) {
      yield r'correctCount';
      yield serializers.serialize(
        object.correctCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.studentId != null) {
      yield r'studentId';
      yield serializers.serialize(
        object.studentId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubmitQuizDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubmitQuizDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'quizStudentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quizStudentId = valueDes;
          break;
        case r'submitedQuestionAnswers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SubmitedQuestionAnswer)]),
          ) as BuiltList<SubmitedQuestionAnswer>;
          result.submitedQuestionAnswers.replace(valueDes);
          break;
        case r'quiz':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuizDTO),
          ) as QuizDTO;
          result.quiz.replace(valueDes);
          break;
        case r'correctAnswers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SubmitedQuestionAnswer)]),
          ) as BuiltList<SubmitedQuestionAnswer>;
          result.correctAnswers.replace(valueDes);
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startedAt = valueDes;
          break;
        case r'enddedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.enddedAt = valueDes;
          break;
        case r'correctCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.correctCount = valueDes;
          break;
        case r'studentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studentId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubmitQuizDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubmitQuizDTOBuilder();
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

