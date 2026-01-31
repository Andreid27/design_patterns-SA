//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/assign_quiz_dto.dart';
import 'package:openapi/src/model/chapter.dart';
import 'package:openapi/src/model/chapter_dto.dart';
import 'package:openapi/src/model/credential_representation.dart';
import 'package:openapi/src/model/credential_representation_config.dart';
import 'package:openapi/src/model/federated_identity_representation.dart';
import 'package:openapi/src/model/filter_criteria_object.dart';
import 'package:openapi/src/model/filter_option_object.dart';
import 'package:openapi/src/model/paginated_request.dart';
import 'package:openapi/src/model/paginated_response_chapter.dart';
import 'package:openapi/src/model/paginated_response_question.dart';
import 'package:openapi/src/model/paginated_response_quizzes_students_view.dart';
import 'package:openapi/src/model/paginated_response_quizzes_view.dart';
import 'package:openapi/src/model/question.dart';
import 'package:openapi/src/model/question_dto.dart';
import 'package:openapi/src/model/quiz_dto.dart';
import 'package:openapi/src/model/quiz_student.dart';
import 'package:openapi/src/model/quiz_write_dto.dart';
import 'package:openapi/src/model/quizzes_students_view.dart';
import 'package:openapi/src/model/quizzes_view.dart';
import 'package:openapi/src/model/social_link_representation.dart';
import 'package:openapi/src/model/sort_criteria.dart';
import 'package:openapi/src/model/student_questions_dto.dart';
import 'package:openapi/src/model/student_quiz_result_dto.dart';
import 'package:openapi/src/model/student_quizzes_dto.dart';
import 'package:openapi/src/model/student_stats_dto.dart';
import 'package:openapi/src/model/submit_quiz_dto.dart';
import 'package:openapi/src/model/submited_question_answer.dart';
import 'package:openapi/src/model/user_consent_representation.dart';
import 'package:openapi/src/model/user_profile_attribute_group_metadata.dart';
import 'package:openapi/src/model/user_profile_attribute_metadata.dart';
import 'package:openapi/src/model/user_profile_metadata.dart';
import 'package:openapi/src/model/user_representation.dart';

part 'serializers.g.dart';

@SerializersFor([
  AssignQuizDTO,
  Chapter,
  ChapterDTO,
  CredentialRepresentation,
  CredentialRepresentationConfig,
  FederatedIdentityRepresentation,
  FilterCriteriaObject,
  FilterOptionObject,
  PaginatedRequest,
  PaginatedResponseChapter,
  PaginatedResponseQuestion,
  PaginatedResponseQuizzesStudentsView,
  PaginatedResponseQuizzesView,
  Question,
  QuestionDTO,
  QuizDTO,
  QuizStudent,
  QuizWriteDTO,
  QuizzesStudentsView,
  QuizzesView,
  SocialLinkRepresentation,
  SortCriteria,
  StudentQuestionsDTO,
  StudentQuizResultDTO,
  StudentQuizzesDTO,
  StudentStatsDTO,
  SubmitQuizDTO,
  SubmitedQuestionAnswer,
  UserConsentRepresentation,
  UserProfileAttributeGroupMetadata,
  UserProfileAttributeMetadata,
  UserProfileMetadata,
  UserRepresentation,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AssignQuizDTO)]),
        () => ListBuilder<AssignQuizDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UserRepresentation)]),
        () => ListBuilder<UserRepresentation>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(JsonObject)]),
        () => MapBuilder<String, JsonObject>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ChapterDTO)]),
        () => ListBuilder<ChapterDTO>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
