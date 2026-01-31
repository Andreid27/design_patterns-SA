// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_quiz_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StudentQuizResultDTO extends StudentQuizResultDTO {
  @override
  final double? result;
  @override
  final DateTime? date;
  @override
  final int? correctAnswers;
  @override
  final int? totalQuestions;

  factory _$StudentQuizResultDTO([
    void Function(StudentQuizResultDTOBuilder)? updates,
  ]) => (StudentQuizResultDTOBuilder()..update(updates))._build();

  _$StudentQuizResultDTO._({
    this.result,
    this.date,
    this.correctAnswers,
    this.totalQuestions,
  }) : super._();
  @override
  StudentQuizResultDTO rebuild(
    void Function(StudentQuizResultDTOBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StudentQuizResultDTOBuilder toBuilder() =>
      StudentQuizResultDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentQuizResultDTO &&
        result == other.result &&
        date == other.date &&
        correctAnswers == other.correctAnswers &&
        totalQuestions == other.totalQuestions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, correctAnswers.hashCode);
    _$hash = $jc(_$hash, totalQuestions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentQuizResultDTO')
          ..add('result', result)
          ..add('date', date)
          ..add('correctAnswers', correctAnswers)
          ..add('totalQuestions', totalQuestions))
        .toString();
  }
}

class StudentQuizResultDTOBuilder
    implements Builder<StudentQuizResultDTO, StudentQuizResultDTOBuilder> {
  _$StudentQuizResultDTO? _$v;

  double? _result;
  double? get result => _$this._result;
  set result(double? result) => _$this._result = result;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  int? _correctAnswers;
  int? get correctAnswers => _$this._correctAnswers;
  set correctAnswers(int? correctAnswers) =>
      _$this._correctAnswers = correctAnswers;

  int? _totalQuestions;
  int? get totalQuestions => _$this._totalQuestions;
  set totalQuestions(int? totalQuestions) =>
      _$this._totalQuestions = totalQuestions;

  StudentQuizResultDTOBuilder() {
    StudentQuizResultDTO._defaults(this);
  }

  StudentQuizResultDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _date = $v.date;
      _correctAnswers = $v.correctAnswers;
      _totalQuestions = $v.totalQuestions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentQuizResultDTO other) {
    _$v = other as _$StudentQuizResultDTO;
  }

  @override
  void update(void Function(StudentQuizResultDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentQuizResultDTO build() => _build();

  _$StudentQuizResultDTO _build() {
    final _$result =
        _$v ??
        _$StudentQuizResultDTO._(
          result: result,
          date: date,
          correctAnswers: correctAnswers,
          totalQuestions: totalQuestions,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
