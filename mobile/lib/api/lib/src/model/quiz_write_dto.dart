//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/question_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quiz_write_dto.g.dart';

/// QuizWriteDTO
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [description] 
/// * [componentType] 
/// * [difficultyLevel] 
/// * [maxTime] 
/// * [chaptersId] 
/// * [questionsList] 
@BuiltValue()
abstract class QuizWriteDTO implements Built<QuizWriteDTO, QuizWriteDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'componentType')
  QuizWriteDTOComponentTypeEnum? get componentType;
  // enum componentTypeEnum {  CG,  CS,  };

  @BuiltValueField(wireName: r'difficultyLevel')
  int? get difficultyLevel;

  @BuiltValueField(wireName: r'maxTime')
  int? get maxTime;

  @BuiltValueField(wireName: r'chaptersId')
  BuiltList<String>? get chaptersId;

  @BuiltValueField(wireName: r'questionsList')
  BuiltList<QuestionDTO>? get questionsList;

  QuizWriteDTO._();

  factory QuizWriteDTO([void updates(QuizWriteDTOBuilder b)]) = _$QuizWriteDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuizWriteDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuizWriteDTO> get serializer => _$QuizWriteDTOSerializer();
}

class _$QuizWriteDTOSerializer implements PrimitiveSerializer<QuizWriteDTO> {
  @override
  final Iterable<Type> types = const [QuizWriteDTO, _$QuizWriteDTO];

  @override
  final String wireName = r'QuizWriteDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuizWriteDTO object, {
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
        specifiedType: const FullType(QuizWriteDTOComponentTypeEnum),
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
    if (object.questionsList != null) {
      yield r'questionsList';
      yield serializers.serialize(
        object.questionsList,
        specifiedType: const FullType(BuiltList, [FullType(QuestionDTO)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuizWriteDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuizWriteDTOBuilder result,
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
            specifiedType: const FullType(QuizWriteDTOComponentTypeEnum),
          ) as QuizWriteDTOComponentTypeEnum;
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
        case r'questionsList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuestionDTO)]),
          ) as BuiltList<QuestionDTO>;
          result.questionsList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuizWriteDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuizWriteDTOBuilder();
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

class QuizWriteDTOComponentTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CG')
  static const QuizWriteDTOComponentTypeEnum CG = _$quizWriteDTOComponentTypeEnum_CG;
  @BuiltValueEnumConst(wireName: r'CS')
  static const QuizWriteDTOComponentTypeEnum CS = _$quizWriteDTOComponentTypeEnum_CS;

  static Serializer<QuizWriteDTOComponentTypeEnum> get serializer => _$quizWriteDTOComponentTypeEnumSerializer;

  const QuizWriteDTOComponentTypeEnum._(String name): super(name);

  static BuiltSet<QuizWriteDTOComponentTypeEnum> get values => _$quizWriteDTOComponentTypeEnumValues;
  static QuizWriteDTOComponentTypeEnum valueOf(String name) => _$quizWriteDTOComponentTypeEnumValueOf(name);
}

