// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_stats_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StudentStatsDTO> _$studentStatsDTOSerializer =
    _$StudentStatsDTOSerializer();

class _$StudentStatsDTOSerializer
    implements StructuredSerializer<StudentStatsDTO> {
  @override
  final Iterable<Type> types = const [StudentStatsDTO, _$StudentStatsDTO];
  @override
  final String wireName = 'StudentStatsDTO';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StudentStatsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    Object? value;
    value = object.questions;
    if (value != null) {
      result
        ..add('questions')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(StudentQuestionsDTO),
          ),
        );
    }
    value = object.quizzes;
    if (value != null) {
      result
        ..add('quizzes')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(StudentQuizzesDTO),
          ),
        );
    }
    value = object.lastMonthQuizzesResults;
    if (value != null) {
      result
        ..add('lastMonthQuizzesResults')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(StudentQuizResultDTO),
            ]),
          ),
        );
    }
    value = object.lastMonthQuizTime;
    if (value != null) {
      result
        ..add('lastMonthQuizTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastMonthQuestionsCount;
    if (value != null) {
      result
        ..add('lastMonthQuestionsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  StudentStatsDTO deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StudentStatsDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'questions':
          result.questions.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(StudentQuestionsDTO),
                )!
                as StudentQuestionsDTO,
          );
          break;
        case 'quizzes':
          result.quizzes.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(StudentQuizzesDTO),
                )!
                as StudentQuizzesDTO,
          );
          break;
        case 'lastMonthQuizzesResults':
          result.lastMonthQuizzesResults.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(StudentQuizResultDTO),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
        case 'lastMonthQuizTime':
          result.lastMonthQuizTime =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'lastMonthQuestionsCount':
          result.lastMonthQuestionsCount =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$StudentStatsDTO extends StudentStatsDTO {
  @override
  final StudentQuestionsDTO? questions;
  @override
  final StudentQuizzesDTO? quizzes;
  @override
  final BuiltList<StudentQuizResultDTO>? lastMonthQuizzesResults;
  @override
  final int? lastMonthQuizTime;
  @override
  final int? lastMonthQuestionsCount;

  factory _$StudentStatsDTO([void Function(StudentStatsDTOBuilder)? updates]) =>
      (StudentStatsDTOBuilder()..update(updates))._build();

  _$StudentStatsDTO._({
    this.questions,
    this.quizzes,
    this.lastMonthQuizzesResults,
    this.lastMonthQuizTime,
    this.lastMonthQuestionsCount,
  }) : super._();
  @override
  StudentStatsDTO rebuild(void Function(StudentStatsDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentStatsDTOBuilder toBuilder() => StudentStatsDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentStatsDTO &&
        questions == other.questions &&
        quizzes == other.quizzes &&
        lastMonthQuizzesResults == other.lastMonthQuizzesResults &&
        lastMonthQuizTime == other.lastMonthQuizTime &&
        lastMonthQuestionsCount == other.lastMonthQuestionsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, quizzes.hashCode);
    _$hash = $jc(_$hash, lastMonthQuizzesResults.hashCode);
    _$hash = $jc(_$hash, lastMonthQuizTime.hashCode);
    _$hash = $jc(_$hash, lastMonthQuestionsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentStatsDTO')
          ..add('questions', questions)
          ..add('quizzes', quizzes)
          ..add('lastMonthQuizzesResults', lastMonthQuizzesResults)
          ..add('lastMonthQuizTime', lastMonthQuizTime)
          ..add('lastMonthQuestionsCount', lastMonthQuestionsCount))
        .toString();
  }
}

class StudentStatsDTOBuilder
    implements Builder<StudentStatsDTO, StudentStatsDTOBuilder> {
  _$StudentStatsDTO? _$v;

  StudentQuestionsDTOBuilder? _questions;
  StudentQuestionsDTOBuilder get questions =>
      _$this._questions ??= StudentQuestionsDTOBuilder();
  set questions(StudentQuestionsDTOBuilder? questions) =>
      _$this._questions = questions;

  StudentQuizzesDTOBuilder? _quizzes;
  StudentQuizzesDTOBuilder get quizzes =>
      _$this._quizzes ??= StudentQuizzesDTOBuilder();
  set quizzes(StudentQuizzesDTOBuilder? quizzes) => _$this._quizzes = quizzes;

  ListBuilder<StudentQuizResultDTO>? _lastMonthQuizzesResults;
  ListBuilder<StudentQuizResultDTO> get lastMonthQuizzesResults =>
      _$this._lastMonthQuizzesResults ??= ListBuilder<StudentQuizResultDTO>();
  set lastMonthQuizzesResults(
    ListBuilder<StudentQuizResultDTO>? lastMonthQuizzesResults,
  ) => _$this._lastMonthQuizzesResults = lastMonthQuizzesResults;

  int? _lastMonthQuizTime;
  int? get lastMonthQuizTime => _$this._lastMonthQuizTime;
  set lastMonthQuizTime(int? lastMonthQuizTime) =>
      _$this._lastMonthQuizTime = lastMonthQuizTime;

  int? _lastMonthQuestionsCount;
  int? get lastMonthQuestionsCount => _$this._lastMonthQuestionsCount;
  set lastMonthQuestionsCount(int? lastMonthQuestionsCount) =>
      _$this._lastMonthQuestionsCount = lastMonthQuestionsCount;

  StudentStatsDTOBuilder() {
    StudentStatsDTO._defaults(this);
  }

  StudentStatsDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questions = $v.questions?.toBuilder();
      _quizzes = $v.quizzes?.toBuilder();
      _lastMonthQuizzesResults = $v.lastMonthQuizzesResults?.toBuilder();
      _lastMonthQuizTime = $v.lastMonthQuizTime;
      _lastMonthQuestionsCount = $v.lastMonthQuestionsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentStatsDTO other) {
    _$v = other as _$StudentStatsDTO;
  }

  @override
  void update(void Function(StudentStatsDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentStatsDTO build() => _build();

  _$StudentStatsDTO _build() {
    _$StudentStatsDTO _$result;
    try {
      _$result =
          _$v ??
          _$StudentStatsDTO._(
            questions: _questions?.build(),
            quizzes: _quizzes?.build(),
            lastMonthQuizzesResults: _lastMonthQuizzesResults?.build(),
            lastMonthQuizTime: lastMonthQuizTime,
            lastMonthQuestionsCount: lastMonthQuestionsCount,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questions';
        _questions?.build();
        _$failedField = 'quizzes';
        _quizzes?.build();
        _$failedField = 'lastMonthQuizzesResults';
        _lastMonthQuizzesResults?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StudentStatsDTO',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
