// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submited_question_answer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubmitedQuestionAnswer extends SubmitedQuestionAnswer {
  @override
  final String? questionId;
  @override
  final int? answer;

  factory _$SubmitedQuestionAnswer([
    void Function(SubmitedQuestionAnswerBuilder)? updates,
  ]) => (SubmitedQuestionAnswerBuilder()..update(updates))._build();

  _$SubmitedQuestionAnswer._({this.questionId, this.answer}) : super._();
  @override
  SubmitedQuestionAnswer rebuild(
    void Function(SubmitedQuestionAnswerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SubmitedQuestionAnswerBuilder toBuilder() =>
      SubmitedQuestionAnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitedQuestionAnswer &&
        questionId == other.questionId &&
        answer == other.answer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, answer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubmitedQuestionAnswer')
          ..add('questionId', questionId)
          ..add('answer', answer))
        .toString();
  }
}

class SubmitedQuestionAnswerBuilder
    implements Builder<SubmitedQuestionAnswer, SubmitedQuestionAnswerBuilder> {
  _$SubmitedQuestionAnswer? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  int? _answer;
  int? get answer => _$this._answer;
  set answer(int? answer) => _$this._answer = answer;

  SubmitedQuestionAnswerBuilder() {
    SubmitedQuestionAnswer._defaults(this);
  }

  SubmitedQuestionAnswerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _answer = $v.answer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitedQuestionAnswer other) {
    _$v = other as _$SubmitedQuestionAnswer;
  }

  @override
  void update(void Function(SubmitedQuestionAnswerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubmitedQuestionAnswer build() => _build();

  _$SubmitedQuestionAnswer _build() {
    final _$result =
        _$v ??
        _$SubmitedQuestionAnswer._(questionId: questionId, answer: answer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
