//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/chapter_dto.dart';
import 'package:openapi/src/model/submited_question_answer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/quiz_student.dart';
import 'package:openapi/src/model/question_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quiz_dto.g.dart';

/// QuizDTO
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [description] 
/// * [componentType] 
/// * [difficultyLevel] 
/// * [maxTime] 
/// * [chaptersId] 
/// * [chapters] 
/// * [questionsId] 
/// * [questions] 
/// * [endTime] 
/// * [createdBy] 
/// * [quizPreviousAttempts] 
/// * [remainedAttempts] 
/// * [correctAnswers] 
@BuiltValue()
abstract class QuizDTO implements Built<QuizDTO, QuizDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'componentType')
  QuizDTOComponentTypeEnum? get componentType;
  // enum componentTypeEnum {  CG,  CS,  };

  @BuiltValueField(wireName: r'difficultyLevel')
  int? get difficultyLevel;

  @BuiltValueField(wireName: r'maxTime')
  int? get maxTime;

  @BuiltValueField(wireName: r'chaptersId')
  BuiltList<String>? get chaptersId;

  @BuiltValueField(wireName: r'chapters')
  BuiltList<ChapterDTO>? get chapters;

  @BuiltValueField(wireName: r'questionsId')
  BuiltList<String>? get questionsId;

  @BuiltValueField(wireName: r'questions')
  BuiltList<QuestionDTO>? get questions;

  @BuiltValueField(wireName: r'endTime')
  DateTime? get endTime;

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'quizPreviousAttempts')
  BuiltList<QuizStudent>? get quizPreviousAttempts;

  @BuiltValueField(wireName: r'remainedAttempts')
  int? get remainedAttempts;

  @BuiltValueField(wireName: r'correctAnswers')
  BuiltList<SubmitedQuestionAnswer>? get correctAnswers;

  QuizDTO._();

  factory QuizDTO([void updates(QuizDTOBuilder b)]) = _$QuizDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuizDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuizDTO> get serializer => _$QuizDTOSerializer();
}

class _$QuizDTOSerializer implements PrimitiveSerializer<QuizDTO> {
  @override
  final Iterable<Type> types = const [QuizDTO, _$QuizDTO];

  @override
  final String wireName = r'QuizDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuizDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.componentType != null) {
      yield r'componentType';
      yield serializers.serialize(
        object.componentType,
        specifiedType: const FullType(QuizDTOComponentTypeEnum),
      );
    }
    if (object.difficultyLevel != null) {
      yield r'difficultyLevel';
      yield serializers.serialize(
        object.difficultyLevel,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxTime != null) {
      yield r'maxTime';
      yield serializers.serialize(
        object.maxTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.chaptersId != null) {
      yield r'chaptersId';
      yield serializers.serialize(
        object.chaptersId,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.chapters != null) {
      yield r'chapters';
      yield serializers.serialize(
        object.chapters,
        specifiedType: const FullType(BuiltList, [FullType(ChapterDTO)]),
      );
    }
    if (object.questionsId != null) {
      yield r'questionsId';
      yield serializers.serialize(
        object.questionsId,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.questions != null) {
      yield r'questions';
      yield serializers.serialize(
        object.questions,
        specifiedType: const FullType(BuiltList, [FullType(QuestionDTO)]),
      );
    }
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.quizPreviousAttempts != null) {
      yield r'quizPreviousAttempts';
      yield serializers.serialize(
        object.quizPreviousAttempts,
        specifiedType: const FullType(BuiltList, [FullType(QuizStudent)]),
      );
    }
    if (object.remainedAttempts != null) {
      yield r'remainedAttempts';
      yield serializers.serialize(
        object.remainedAttempts,
        specifiedType: const FullType(int),
      );
    }
    if (object.correctAnswers != null) {
      yield r'correctAnswers';
      yield serializers.serialize(
        object.correctAnswers,
        specifiedType: const FullType(BuiltList, [FullType(SubmitedQuestionAnswer)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuizDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuizDTOBuilder result,
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'componentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuizDTOComponentTypeEnum),
          ) as QuizDTOComponentTypeEnum;
          result.componentType = valueDes;
          break;
        case r'difficultyLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.difficultyLevel = valueDes;
          break;
        case r'maxTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxTime = valueDes;
          break;
        case r'chaptersId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.chaptersId.replace(valueDes);
          break;
        case r'chapters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChapterDTO)]),
          ) as BuiltList<ChapterDTO>;
          result.chapters.replace(valueDes);
          break;
        case r'questionsId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.questionsId.replace(valueDes);
          break;
        case r'questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuestionDTO)]),
          ) as BuiltList<QuestionDTO>;
          result.questions.replace(valueDes);
          break;
        case r'endTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endTime = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdBy = valueDes;
          break;
        case r'quizPreviousAttempts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuizStudent)]),
          ) as BuiltList<QuizStudent>;
          result.quizPreviousAttempts.replace(valueDes);
          break;
        case r'remainedAttempts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.remainedAttempts = valueDes;
          break;
        case r'correctAnswers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SubmitedQuestionAnswer)]),
          ) as BuiltList<SubmitedQuestionAnswer>;
          result.correctAnswers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuizDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuizDTOBuilder();
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

class QuizDTOComponentTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CG')
  static const QuizDTOComponentTypeEnum CG = _$quizDTOComponentTypeEnum_CG;
  @BuiltValueEnumConst(wireName: r'CS')
  static const QuizDTOComponentTypeEnum CS = _$quizDTOComponentTypeEnum_CS;

  static Serializer<QuizDTOComponentTypeEnum> get serializer => _$quizDTOComponentTypeEnumSerializer;

  const QuizDTOComponentTypeEnum._(String name): super(name);

  static BuiltSet<QuizDTOComponentTypeEnum> get values => _$quizDTOComponentTypeEnumValues;
  static QuizDTOComponentTypeEnum valueOf(String name) => _$quizDTOComponentTypeEnumValueOf(name);
}

