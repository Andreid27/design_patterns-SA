//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student_quiz_result_dto.g.dart';

/// StudentQuizResultDTO
///
/// Properties:
/// * [result] 
/// * [date] 
/// * [correctAnswers] 
/// * [totalQuestions] 
@BuiltValue()
abstract class StudentQuizResultDTO implements Built<StudentQuizResultDTO, StudentQuizResultDTOBuilder> {
  @BuiltValueField(wireName: r'result')
  double? get result;

  @BuiltValueField(wireName: r'date')
  DateTime? get date;

  @BuiltValueField(wireName: r'correctAnswers')
  int? get correctAnswers;

  @BuiltValueField(wireName: r'totalQuestions')
  int? get totalQuestions;

  StudentQuizResultDTO._();

  factory StudentQuizResultDTO([void updates(StudentQuizResultDTOBuilder b)]) = _$StudentQuizResultDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StudentQuizResultDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StudentQuizResultDTO> get serializer => _$StudentQuizResultDTOSerializer();
}

class _$StudentQuizResultDTOSerializer implements PrimitiveSerializer<StudentQuizResultDTO> {
  @override
  final Iterable<Type> types = const [StudentQuizResultDTO, _$StudentQuizResultDTO];

  @override
  final String wireName = r'StudentQuizResultDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StudentQuizResultDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(double),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
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
    if (object.totalQuestions != null) {
      yield r'totalQuestions';
      yield serializers.serialize(
        object.totalQuestions,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StudentQuizResultDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StudentQuizResultDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.result = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'correctAnswers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.correctAnswers = valueDes;
          break;
        case r'totalQuestions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalQuestions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StudentQuizResultDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StudentQuizResultDTOBuilder();
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

