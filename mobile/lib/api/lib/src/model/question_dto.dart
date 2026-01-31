//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_dto.g.dart';

/// QuestionDTO
///
/// Properties:
/// * [id] 
/// * [content] 
/// * [answer1] 
/// * [answer2] 
/// * [answer3] 
/// * [answer4] 
/// * [answer5] 
/// * [correctAnswer] 
/// * [source_] 
/// * [sourcePage] 
/// * [difficultyLevel] 
/// * [hint] 
/// * [createdBy] 
@BuiltValue()
abstract class QuestionDTO implements Built<QuestionDTO, QuestionDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'content')
  String get content;

  @BuiltValueField(wireName: r'answer1')
  String? get answer1;

  @BuiltValueField(wireName: r'answer2')
  String? get answer2;

  @BuiltValueField(wireName: r'answer3')
  String? get answer3;

  @BuiltValueField(wireName: r'answer4')
  String? get answer4;

  @BuiltValueField(wireName: r'answer5')
  String? get answer5;

  @BuiltValueField(wireName: r'correctAnswer')
  int? get correctAnswer;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'sourcePage')
  int? get sourcePage;

  @BuiltValueField(wireName: r'difficultyLevel')
  int? get difficultyLevel;

  @BuiltValueField(wireName: r'hint')
  String? get hint;

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  QuestionDTO._();

  factory QuestionDTO([void updates(QuestionDTOBuilder b)]) = _$QuestionDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionDTO> get serializer => _$QuestionDTOSerializer();
}

class _$QuestionDTOSerializer implements PrimitiveSerializer<QuestionDTO> {
  @override
  final Iterable<Type> types = const [QuestionDTO, _$QuestionDTO];

  @override
  final String wireName = r'QuestionDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    if (object.answer1 != null) {
      yield r'answer1';
      yield serializers.serialize(
        object.answer1,
        specifiedType: const FullType(String),
      );
    }
    if (object.answer2 != null) {
      yield r'answer2';
      yield serializers.serialize(
        object.answer2,
        specifiedType: const FullType(String),
      );
    }
    if (object.answer3 != null) {
      yield r'answer3';
      yield serializers.serialize(
        object.answer3,
        specifiedType: const FullType(String),
      );
    }
    if (object.answer4 != null) {
      yield r'answer4';
      yield serializers.serialize(
        object.answer4,
        specifiedType: const FullType(String),
      );
    }
    if (object.answer5 != null) {
      yield r'answer5';
      yield serializers.serialize(
        object.answer5,
        specifiedType: const FullType(String),
      );
    }
    if (object.correctAnswer != null) {
      yield r'correctAnswer';
      yield serializers.serialize(
        object.correctAnswer,
        specifiedType: const FullType(int),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourcePage != null) {
      yield r'sourcePage';
      yield serializers.serialize(
        object.sourcePage,
        specifiedType: const FullType(int),
      );
    }
    if (object.difficultyLevel != null) {
      yield r'difficultyLevel';
      yield serializers.serialize(
        object.difficultyLevel,
        specifiedType: const FullType(int),
      );
    }
    if (object.hint != null) {
      yield r'hint';
      yield serializers.serialize(
        object.hint,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionDTOBuilder result,
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
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'answer1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answer1 = valueDes;
          break;
        case r'answer2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answer2 = valueDes;
          break;
        case r'answer3':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answer3 = valueDes;
          break;
        case r'answer4':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answer4 = valueDes;
          break;
        case r'answer5':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answer5 = valueDes;
          break;
        case r'correctAnswer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.correctAnswer = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'sourcePage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sourcePage = valueDes;
          break;
        case r'difficultyLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.difficultyLevel = valueDes;
          break;
        case r'hint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hint = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionDTOBuilder();
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

