//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'submited_question_answer.g.dart';

/// SubmitedQuestionAnswer
///
/// Properties:
/// * [questionId] 
/// * [answer] 
@BuiltValue()
abstract class SubmitedQuestionAnswer implements Built<SubmitedQuestionAnswer, SubmitedQuestionAnswerBuilder> {
  @BuiltValueField(wireName: r'questionId')
  String? get questionId;

  @BuiltValueField(wireName: r'answer')
  int? get answer;

  SubmitedQuestionAnswer._();

  factory SubmitedQuestionAnswer([void updates(SubmitedQuestionAnswerBuilder b)]) = _$SubmitedQuestionAnswer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubmitedQuestionAnswerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubmitedQuestionAnswer> get serializer => _$SubmitedQuestionAnswerSerializer();
}

class _$SubmitedQuestionAnswerSerializer implements PrimitiveSerializer<SubmitedQuestionAnswer> {
  @override
  final Iterable<Type> types = const [SubmitedQuestionAnswer, _$SubmitedQuestionAnswer];

  @override
  final String wireName = r'SubmitedQuestionAnswer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubmitedQuestionAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.questionId != null) {
      yield r'questionId';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.answer != null) {
      yield r'answer';
      yield serializers.serialize(
        object.answer,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubmitedQuestionAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubmitedQuestionAnswerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'questionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionId = valueDes;
          break;
        case r'answer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.answer = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubmitedQuestionAnswer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubmitedQuestionAnswerBuilder();
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

