// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_quizzes_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StudentQuizzesDTO extends StudentQuizzesDTO {
  @override
  final int? completedQuizzes;

  factory _$StudentQuizzesDTO([
    void Function(StudentQuizzesDTOBuilder)? updates,
  ]) => (StudentQuizzesDTOBuilder()..update(updates))._build();

  _$StudentQuizzesDTO._({this.completedQuizzes}) : super._();
  @override
  StudentQuizzesDTO rebuild(void Function(StudentQuizzesDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentQuizzesDTOBuilder toBuilder() =>
      StudentQuizzesDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentQuizzesDTO &&
        completedQuizzes == other.completedQuizzes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, completedQuizzes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'StudentQuizzesDTO',
    )..add('completedQuizzes', completedQuizzes)).toString();
  }
}

class StudentQuizzesDTOBuilder
    implements Builder<StudentQuizzesDTO, StudentQuizzesDTOBuilder> {
  _$StudentQuizzesDTO? _$v;

  int? _completedQuizzes;
  int? get completedQuizzes => _$this._completedQuizzes;
  set completedQuizzes(int? completedQuizzes) =>
      _$this._completedQuizzes = completedQuizzes;

  StudentQuizzesDTOBuilder() {
    StudentQuizzesDTO._defaults(this);
  }

  StudentQuizzesDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _completedQuizzes = $v.completedQuizzes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentQuizzesDTO other) {
    _$v = other as _$StudentQuizzesDTO;
  }

  @override
  void update(void Function(StudentQuizzesDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentQuizzesDTO build() => _build();

  _$StudentQuizzesDTO _build() {
    final _$result =
        _$v ?? _$StudentQuizzesDTO._(completedQuizzes: completedQuizzes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
