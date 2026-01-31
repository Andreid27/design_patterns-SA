// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_questions_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StudentQuestionsDTO extends StudentQuestionsDTO {
  @override
  final int? totalQuestions;
  @override
  final int? correctQuestions;

  factory _$StudentQuestionsDTO([
    void Function(StudentQuestionsDTOBuilder)? updates,
  ]) => (StudentQuestionsDTOBuilder()..update(updates))._build();

  _$StudentQuestionsDTO._({this.totalQuestions, this.correctQuestions})
    : super._();
  @override
  StudentQuestionsDTO rebuild(
    void Function(StudentQuestionsDTOBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StudentQuestionsDTOBuilder toBuilder() =>
      StudentQuestionsDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentQuestionsDTO &&
        totalQuestions == other.totalQuestions &&
        correctQuestions == other.correctQuestions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalQuestions.hashCode);
    _$hash = $jc(_$hash, correctQuestions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentQuestionsDTO')
          ..add('totalQuestions', totalQuestions)
          ..add('correctQuestions', correctQuestions))
        .toString();
  }
}

class StudentQuestionsDTOBuilder
    implements Builder<StudentQuestionsDTO, StudentQuestionsDTOBuilder> {
  _$StudentQuestionsDTO? _$v;

  int? _totalQuestions;
  int? get totalQuestions => _$this._totalQuestions;
  set totalQuestions(int? totalQuestions) =>
      _$this._totalQuestions = totalQuestions;

  int? _correctQuestions;
  int? get correctQuestions => _$this._correctQuestions;
  set correctQuestions(int? correctQuestions) =>
      _$this._correctQuestions = correctQuestions;

  StudentQuestionsDTOBuilder() {
    StudentQuestionsDTO._defaults(this);
  }

  StudentQuestionsDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalQuestions = $v.totalQuestions;
      _correctQuestions = $v.correctQuestions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentQuestionsDTO other) {
    _$v = other as _$StudentQuestionsDTO;
  }

  @override
  void update(void Function(StudentQuestionsDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentQuestionsDTO build() => _build();

  _$StudentQuestionsDTO _build() {
    final _$result =
        _$v ??
        _$StudentQuestionsDTO._(
          totalQuestions: totalQuestions,
          correctQuestions: correctQuestions,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
