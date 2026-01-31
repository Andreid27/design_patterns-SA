// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuizDTOComponentTypeEnum _$quizDTOComponentTypeEnum_CG =
    const QuizDTOComponentTypeEnum._('CG');
const QuizDTOComponentTypeEnum _$quizDTOComponentTypeEnum_CS =
    const QuizDTOComponentTypeEnum._('CS');

QuizDTOComponentTypeEnum _$quizDTOComponentTypeEnumValueOf(String name) {
  switch (name) {
    case 'CG':
      return _$quizDTOComponentTypeEnum_CG;
    case 'CS':
      return _$quizDTOComponentTypeEnum_CS;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QuizDTOComponentTypeEnum> _$quizDTOComponentTypeEnumValues =
    BuiltSet<QuizDTOComponentTypeEnum>(const <QuizDTOComponentTypeEnum>[
      _$quizDTOComponentTypeEnum_CG,
      _$quizDTOComponentTypeEnum_CS,
    ]);

Serializer<QuizDTOComponentTypeEnum> _$quizDTOComponentTypeEnumSerializer =
    _$QuizDTOComponentTypeEnumSerializer();

class _$QuizDTOComponentTypeEnumSerializer
    implements PrimitiveSerializer<QuizDTOComponentTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CG': 'CG',
    'CS': 'CS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CG': 'CG',
    'CS': 'CS',
  };

  @override
  final Iterable<Type> types = const <Type>[QuizDTOComponentTypeEnum];
  @override
  final String wireName = 'QuizDTOComponentTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    QuizDTOComponentTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  QuizDTOComponentTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => QuizDTOComponentTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$QuizDTO extends QuizDTO {
  @override
  final String? id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final QuizDTOComponentTypeEnum? componentType;
  @override
  final int? difficultyLevel;
  @override
  final int? maxTime;
  @override
  final BuiltList<String>? chaptersId;
  @override
  final BuiltList<ChapterDTO>? chapters;
  @override
  final BuiltList<String>? questionsId;
  @override
  final BuiltList<QuestionDTO>? questions;
  @override
  final DateTime? endTime;
  @override
  final String? createdBy;
  @override
  final BuiltList<QuizStudent>? quizPreviousAttempts;
  @override
  final int? remainedAttempts;
  @override
  final BuiltList<SubmitedQuestionAnswer>? correctAnswers;

  factory _$QuizDTO([void Function(QuizDTOBuilder)? updates]) =>
      (QuizDTOBuilder()..update(updates))._build();

  _$QuizDTO._({
    this.id,
    required this.title,
    this.description,
    this.componentType,
    this.difficultyLevel,
    this.maxTime,
    this.chaptersId,
    this.chapters,
    this.questionsId,
    this.questions,
    this.endTime,
    this.createdBy,
    this.quizPreviousAttempts,
    this.remainedAttempts,
    this.correctAnswers,
  }) : super._();
  @override
  QuizDTO rebuild(void Function(QuizDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuizDTOBuilder toBuilder() => QuizDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizDTO &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        componentType == other.componentType &&
        difficultyLevel == other.difficultyLevel &&
        maxTime == other.maxTime &&
        chaptersId == other.chaptersId &&
        chapters == other.chapters &&
        questionsId == other.questionsId &&
        questions == other.questions &&
        endTime == other.endTime &&
        createdBy == other.createdBy &&
        quizPreviousAttempts == other.quizPreviousAttempts &&
        remainedAttempts == other.remainedAttempts &&
        correctAnswers == other.correctAnswers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, componentType.hashCode);
    _$hash = $jc(_$hash, difficultyLevel.hashCode);
    _$hash = $jc(_$hash, maxTime.hashCode);
    _$hash = $jc(_$hash, chaptersId.hashCode);
    _$hash = $jc(_$hash, chapters.hashCode);
    _$hash = $jc(_$hash, questionsId.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, quizPreviousAttempts.hashCode);
    _$hash = $jc(_$hash, remainedAttempts.hashCode);
    _$hash = $jc(_$hash, correctAnswers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuizDTO')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('componentType', componentType)
          ..add('difficultyLevel', difficultyLevel)
          ..add('maxTime', maxTime)
          ..add('chaptersId', chaptersId)
          ..add('chapters', chapters)
          ..add('questionsId', questionsId)
          ..add('questions', questions)
          ..add('endTime', endTime)
          ..add('createdBy', createdBy)
          ..add('quizPreviousAttempts', quizPreviousAttempts)
          ..add('remainedAttempts', remainedAttempts)
          ..add('correctAnswers', correctAnswers))
        .toString();
  }
}

class QuizDTOBuilder implements Builder<QuizDTO, QuizDTOBuilder> {
  _$QuizDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  QuizDTOComponentTypeEnum? _componentType;
  QuizDTOComponentTypeEnum? get componentType => _$this._componentType;
  set componentType(QuizDTOComponentTypeEnum? componentType) =>
      _$this._componentType = componentType;

  int? _difficultyLevel;
  int? get difficultyLevel => _$this._difficultyLevel;
  set difficultyLevel(int? difficultyLevel) =>
      _$this._difficultyLevel = difficultyLevel;

  int? _maxTime;
  int? get maxTime => _$this._maxTime;
  set maxTime(int? maxTime) => _$this._maxTime = maxTime;

  ListBuilder<String>? _chaptersId;
  ListBuilder<String> get chaptersId =>
      _$this._chaptersId ??= ListBuilder<String>();
  set chaptersId(ListBuilder<String>? chaptersId) =>
      _$this._chaptersId = chaptersId;

  ListBuilder<ChapterDTO>? _chapters;
  ListBuilder<ChapterDTO> get chapters =>
      _$this._chapters ??= ListBuilder<ChapterDTO>();
  set chapters(ListBuilder<ChapterDTO>? chapters) =>
      _$this._chapters = chapters;

  ListBuilder<String>? _questionsId;
  ListBuilder<String> get questionsId =>
      _$this._questionsId ??= ListBuilder<String>();
  set questionsId(ListBuilder<String>? questionsId) =>
      _$this._questionsId = questionsId;

  ListBuilder<QuestionDTO>? _questions;
  ListBuilder<QuestionDTO> get questions =>
      _$this._questions ??= ListBuilder<QuestionDTO>();
  set questions(ListBuilder<QuestionDTO>? questions) =>
      _$this._questions = questions;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  ListBuilder<QuizStudent>? _quizPreviousAttempts;
  ListBuilder<QuizStudent> get quizPreviousAttempts =>
      _$this._quizPreviousAttempts ??= ListBuilder<QuizStudent>();
  set quizPreviousAttempts(ListBuilder<QuizStudent>? quizPreviousAttempts) =>
      _$this._quizPreviousAttempts = quizPreviousAttempts;

  int? _remainedAttempts;
  int? get remainedAttempts => _$this._remainedAttempts;
  set remainedAttempts(int? remainedAttempts) =>
      _$this._remainedAttempts = remainedAttempts;

  ListBuilder<SubmitedQuestionAnswer>? _correctAnswers;
  ListBuilder<SubmitedQuestionAnswer> get correctAnswers =>
      _$this._correctAnswers ??= ListBuilder<SubmitedQuestionAnswer>();
  set correctAnswers(ListBuilder<SubmitedQuestionAnswer>? correctAnswers) =>
      _$this._correctAnswers = correctAnswers;

  QuizDTOBuilder() {
    QuizDTO._defaults(this);
  }

  QuizDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _componentType = $v.componentType;
      _difficultyLevel = $v.difficultyLevel;
      _maxTime = $v.maxTime;
      _chaptersId = $v.chaptersId?.toBuilder();
      _chapters = $v.chapters?.toBuilder();
      _questionsId = $v.questionsId?.toBuilder();
      _questions = $v.questions?.toBuilder();
      _endTime = $v.endTime;
      _createdBy = $v.createdBy;
      _quizPreviousAttempts = $v.quizPreviousAttempts?.toBuilder();
      _remainedAttempts = $v.remainedAttempts;
      _correctAnswers = $v.correctAnswers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuizDTO other) {
    _$v = other as _$QuizDTO;
  }

  @override
  void update(void Function(QuizDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuizDTO build() => _build();

  _$QuizDTO _build() {
    _$QuizDTO _$result;
    try {
      _$result =
          _$v ??
          _$QuizDTO._(
            id: id,
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'QuizDTO',
              'title',
            ),
            description: description,
            componentType: componentType,
            difficultyLevel: difficultyLevel,
            maxTime: maxTime,
            chaptersId: _chaptersId?.build(),
            chapters: _chapters?.build(),
            questionsId: _questionsId?.build(),
            questions: _questions?.build(),
            endTime: endTime,
            createdBy: createdBy,
            quizPreviousAttempts: _quizPreviousAttempts?.build(),
            remainedAttempts: remainedAttempts,
            correctAnswers: _correctAnswers?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chaptersId';
        _chaptersId?.build();
        _$failedField = 'chapters';
        _chapters?.build();
        _$failedField = 'questionsId';
        _questionsId?.build();
        _$failedField = 'questions';
        _questions?.build();

        _$failedField = 'quizPreviousAttempts';
        _quizPreviousAttempts?.build();

        _$failedField = 'correctAnswers';
        _correctAnswers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'QuizDTO',
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
