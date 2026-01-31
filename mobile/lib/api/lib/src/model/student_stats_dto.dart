//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/student_quizzes_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/student_quiz_result_dto.dart';
import 'package:openapi/src/model/student_questions_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student_stats_dto.g.dart';

/// StudentStatsDTO
///
/// Properties:
/// * [questions] 
/// * [quizzes] 
/// * [lastMonthQuizzesResults] 
/// * [lastMonthQuizTime] 
/// * [lastMonthQuestionsCount] 
@BuiltValue()
abstract class StudentStatsDTO implements Built<StudentStatsDTO, StudentStatsDTOBuilder> {
  @BuiltValueField(wireName: r'questions')
  StudentQuestionsDTO? get questions;

  @BuiltValueField(wireName: r'quizzes')
  StudentQuizzesDTO? get quizzes;

  @BuiltValueField(wireName: r'lastMonthQuizzesResults')
  BuiltList<StudentQuizResultDTO>? get lastMonthQuizzesResults;

  @BuiltValueField(wireName: r'lastMonthQuizTime')
  int? get lastMonthQuizTime;

  @BuiltValueField(wireName: r'lastMonthQuestionsCount')
  int? get lastMonthQuestionsCount;

  StudentStatsDTO._();

  /// Factory constructor to enable built_value code generation of structured serializer
  factory StudentStatsDTO([void Function(StudentStatsDTOBuilder) updates]) = _$StudentStatsDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StudentStatsDTOBuilder b) => b;

  @BuiltValueSerializer(custom: false)
  static Serializer<StudentStatsDTO> get serializer => _$studentStatsDTOSerializer;
}

