// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionDTO extends QuestionDTO {
  @override
  final String? id;
  @override
  final String content;
  @override
  final String? answer1;
  @override
  final String? answer2;
  @override
  final String? answer3;
  @override
  final String? answer4;
  @override
  final String? answer5;
  @override
  final int? correctAnswer;
  @override
  final String? source_;
  @override
  final int? sourcePage;
  @override
  final int? difficultyLevel;
  @override
  final String? hint;
  @override
  final String? createdBy;

  factory _$QuestionDTO([void Function(QuestionDTOBuilder)? updates]) =>
      (QuestionDTOBuilder()..update(updates))._build();

  _$QuestionDTO._({
    this.id,
    required this.content,
    this.answer1,
    this.answer2,
    this.answer3,
    this.answer4,
    this.answer5,
    this.correctAnswer,
    this.source_,
    this.sourcePage,
    this.difficultyLevel,
    this.hint,
    this.createdBy,
  }) : super._();
  @override
  QuestionDTO rebuild(void Function(QuestionDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionDTOBuilder toBuilder() => QuestionDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionDTO &&
        id == other.id &&
        content == other.content &&
        answer1 == other.answer1 &&
        answer2 == other.answer2 &&
        answer3 == other.answer3 &&
        answer4 == other.answer4 &&
        answer5 == other.answer5 &&
        correctAnswer == other.correctAnswer &&
        source_ == other.source_ &&
        sourcePage == other.sourcePage &&
        difficultyLevel == other.difficultyLevel &&
        hint == other.hint &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, answer1.hashCode);
    _$hash = $jc(_$hash, answer2.hashCode);
    _$hash = $jc(_$hash, answer3.hashCode);
    _$hash = $jc(_$hash, answer4.hashCode);
    _$hash = $jc(_$hash, answer5.hashCode);
    _$hash = $jc(_$hash, correctAnswer.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, sourcePage.hashCode);
    _$hash = $jc(_$hash, difficultyLevel.hashCode);
    _$hash = $jc(_$hash, hint.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionDTO')
          ..add('id', id)
          ..add('content', content)
          ..add('answer1', answer1)
          ..add('answer2', answer2)
          ..add('answer3', answer3)
          ..add('answer4', answer4)
          ..add('answer5', answer5)
          ..add('correctAnswer', correctAnswer)
          ..add('source_', source_)
          ..add('sourcePage', sourcePage)
          ..add('difficultyLevel', difficultyLevel)
          ..add('hint', hint)
          ..add('createdBy', createdBy))
        .toString();
  }
}

class QuestionDTOBuilder implements Builder<QuestionDTO, QuestionDTOBuilder> {
  _$QuestionDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _answer1;
  String? get answer1 => _$this._answer1;
  set answer1(String? answer1) => _$this._answer1 = answer1;

  String? _answer2;
  String? get answer2 => _$this._answer2;
  set answer2(String? answer2) => _$this._answer2 = answer2;

  String? _answer3;
  String? get answer3 => _$this._answer3;
  set answer3(String? answer3) => _$this._answer3 = answer3;

  String? _answer4;
  String? get answer4 => _$this._answer4;
  set answer4(String? answer4) => _$this._answer4 = answer4;

  String? _answer5;
  String? get answer5 => _$this._answer5;
  set answer5(String? answer5) => _$this._answer5 = answer5;

  int? _correctAnswer;
  int? get correctAnswer => _$this._correctAnswer;
  set correctAnswer(int? correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  int? _sourcePage;
  int? get sourcePage => _$this._sourcePage;
  set sourcePage(int? sourcePage) => _$this._sourcePage = sourcePage;

  int? _difficultyLevel;
  int? get difficultyLevel => _$this._difficultyLevel;
  set difficultyLevel(int? difficultyLevel) =>
      _$this._difficultyLevel = difficultyLevel;

  String? _hint;
  String? get hint => _$this._hint;
  set hint(String? hint) => _$this._hint = hint;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  QuestionDTOBuilder() {
    QuestionDTO._defaults(this);
  }

  QuestionDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _content = $v.content;
      _answer1 = $v.answer1;
      _answer2 = $v.answer2;
      _answer3 = $v.answer3;
      _answer4 = $v.answer4;
      _answer5 = $v.answer5;
      _correctAnswer = $v.correctAnswer;
      _source_ = $v.source_;
      _sourcePage = $v.sourcePage;
      _difficultyLevel = $v.difficultyLevel;
      _hint = $v.hint;
      _createdBy = $v.createdBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionDTO other) {
    _$v = other as _$QuestionDTO;
  }

  @override
  void update(void Function(QuestionDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionDTO build() => _build();

  _$QuestionDTO _build() {
    final _$result =
        _$v ??
        _$QuestionDTO._(
          id: id,
          content: BuiltValueNullFieldError.checkNotNull(
            content,
            r'QuestionDTO',
            'content',
          ),
          answer1: answer1,
          answer2: answer2,
          answer3: answer3,
          answer4: answer4,
          answer5: answer5,
          correctAnswer: correctAnswer,
          source_: source_,
          sourcePage: sourcePage,
          difficultyLevel: difficultyLevel,
          hint: hint,
          createdBy: createdBy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
