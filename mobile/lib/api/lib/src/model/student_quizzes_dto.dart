//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student_quizzes_dto.g.dart';

/// StudentQuizzesDTO
///
/// Properties:
/// * [completedQuizzes] 
@BuiltValue()
abstract class StudentQuizzesDTO implements Built<StudentQuizzesDTO, StudentQuizzesDTOBuilder> {
  @BuiltValueField(wireName: r'completedQuizzes')
  int? get completedQuizzes;

  StudentQuizzesDTO._();

  factory StudentQuizzesDTO([void updates(StudentQuizzesDTOBuilder b)]) = _$StudentQuizzesDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StudentQuizzesDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StudentQuizzesDTO> get serializer => _$StudentQuizzesDTOSerializer();
}

class _$StudentQuizzesDTOSerializer implements PrimitiveSerializer<StudentQuizzesDTO> {
  @override
  final Iterable<Type> types = const [StudentQuizzesDTO, _$StudentQuizzesDTO];

  @override
  final String wireName = r'StudentQuizzesDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StudentQuizzesDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.completedQuizzes != null) {
      yield r'completedQuizzes';
      yield serializers.serialize(
        object.completedQuizzes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StudentQuizzesDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StudentQuizzesDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'completedQuizzes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.completedQuizzes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StudentQuizzesDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StudentQuizzesDTOBuilder();
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

