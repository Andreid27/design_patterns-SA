// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_quiz_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubmitQuizDTO extends SubmitQuizDTO {
  @override
  final String? quizStudentId;
  @override
  final BuiltList<SubmitedQuestionAnswer>? submitedQuestionAnswers;
  @override
  final QuizDTO? quiz;
  @override
  final BuiltList<SubmitedQuestionAnswer>? correctAnswers;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? enddedAt;
  @override
  final int? correctCount;
  @override
  final String? studentId;

  factory _$SubmitQuizDTO([void Function(SubmitQuizDTOBuilder)? updates]) =>
      (SubmitQuizDTOBuilder()..update(updates))._build();

  _$SubmitQuizDTO._({
    this.quizStudentId,
    this.submitedQuestionAnswers,
    this.quiz,
    this.correctAnswers,
    this.startedAt,
    this.enddedAt,
    this.correctCount,
    this.studentId,
  }) : super._();
  @override
  SubmitQuizDTO rebuild(void Function(SubmitQuizDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmitQuizDTOBuilder toBuilder() => SubmitQuizDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitQuizDTO &&
        quizStudentId == other.quizStudentId &&
        submitedQuestionAnswers == other.submitedQuestionAnswers &&
        quiz == other.quiz &&
        correctAnswers == other.correctAnswers &&
        startedAt == other.startedAt &&
        enddedAt == other.enddedAt &&
        correctCount == other.correctCount &&
        studentId == other.studentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, quizStudentId.hashCode);
    _$hash = $jc(_$hash, submitedQuestionAnswers.hashCode);
    _$hash = $jc(_$hash, quiz.hashCode);
    _$hash = $jc(_$hash, correctAnswers.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, enddedAt.hashCode);
    _$hash = $jc(_$hash, correctCount.hashCode);
    _$hash = $jc(_$hash, studentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubmitQuizDTO')
          ..add('quizStudentId', quizStudentId)
          ..add('submitedQuestionAnswers', submitedQuestionAnswers)
          ..add('quiz', quiz)
          ..add('correctAnswers', correctAnswers)
          ..add('startedAt', startedAt)
          ..add('enddedAt', enddedAt)
          ..add('correctCount', correctCount)
          ..add('studentId', studentId))
        .toString();
  }
}

class SubmitQuizDTOBuilder
    implements Builder<SubmitQuizDTO, SubmitQuizDTOBuilder> {
  _$SubmitQuizDTO? _$v;

  String? _quizStudentId;
  String? get quizStudentId => _$this._quizStudentId;
  set quizStudentId(String? quizStudentId) =>
      _$this._quizStudentId = quizStudentId;

  ListBuilder<SubmitedQuestionAnswer>? _submitedQuestionAnswers;
  ListBuilder<SubmitedQuestionAnswer> get submitedQuestionAnswers =>
      _$this._submitedQuestionAnswers ??= ListBuilder<SubmitedQuestionAnswer>();
  set submitedQuestionAnswers(
    ListBuilder<SubmitedQuestionAnswer>? submitedQuestionAnswers,
  ) => _$this._submitedQuestionAnswers = submitedQuestionAnswers;

  QuizDTOBuilder? _quiz;
  QuizDTOBuilder get quiz => _$this._quiz ??= QuizDTOBuilder();
  set quiz(QuizDTOBuilder? quiz) => _$this._quiz = quiz;

  ListBuilder<SubmitedQuestionAnswer>? _correctAnswers;
  ListBuilder<SubmitedQuestionAnswer> get correctAnswers =>
      _$this._correctAnswers ??= ListBuilder<SubmitedQuestionAnswer>();
  set correctAnswers(ListBuilder<SubmitedQuestionAnswer>? correctAnswers) =>
      _$this._correctAnswers = correctAnswers;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _enddedAt;
  DateTime? get enddedAt => _$this._enddedAt;
  set enddedAt(DateTime? enddedAt) => _$this._enddedAt = enddedAt;

  int? _correctCount;
  int? get correctCount => _$this._correctCount;
  set correctCount(int? correctCount) => _$this._correctCount = correctCount;

  String? _studentId;
  String? get studentId => _$this._studentId;
  set studentId(String? studentId) => _$this._studentId = studentId;

  SubmitQuizDTOBuilder() {
    SubmitQuizDTO._defaults(this);
  }

  SubmitQuizDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quizStudentId = $v.quizStudentId;
      _submitedQuestionAnswers = $v.submitedQuestionAnswers?.toBuilder();
      _quiz = $v.quiz?.toBuilder();
      _correctAnswers = $v.correctAnswers?.toBuilder();
      _startedAt = $v.startedAt;
      _enddedAt = $v.enddedAt;
      _correctCount = $v.correctCount;
      _studentId = $v.studentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitQuizDTO other) {
    _$v = other as _$SubmitQuizDTO;
  }

  @override
  void update(void Function(SubmitQuizDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubmitQuizDTO build() => _build();

  _$SubmitQuizDTO _build() {
    _$SubmitQuizDTO _$result;
    try {
      _$result =
          _$v ??
          _$SubmitQuizDTO._(
            quizStudentId: quizStudentId,
            submitedQuestionAnswers: _submitedQuestionAnswers?.build(),
            quiz: _quiz?.build(),
            correctAnswers: _correctAnswers?.build(),
            startedAt: startedAt,
            enddedAt: enddedAt,
            correctCount: correctCount,
            studentId: studentId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'submitedQuestionAnswers';
        _submitedQuestionAnswers?.build();
        _$failedField = 'quiz';
        _quiz?.build();
        _$failedField = 'correctAnswers';
        _correctAnswers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SubmitQuizDTO',
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
