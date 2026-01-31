// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quizzes_students_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuizzesStudentsViewComponentTypeEnum
_$quizzesStudentsViewComponentTypeEnum_CG =
    const QuizzesStudentsViewComponentTypeEnum._('CG');
const QuizzesStudentsViewComponentTypeEnum
_$quizzesStudentsViewComponentTypeEnum_CS =
    const QuizzesStudentsViewComponentTypeEnum._('CS');

QuizzesStudentsViewComponentTypeEnum
_$quizzesStudentsViewComponentTypeEnumValueOf(String name) {
  switch (name) {
    case 'CG':
      return _$quizzesStudentsViewComponentTypeEnum_CG;
    case 'CS':
      return _$quizzesStudentsViewComponentTypeEnum_CS;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QuizzesStudentsViewComponentTypeEnum>
_$quizzesStudentsViewComponentTypeEnumValues =
    BuiltSet<QuizzesStudentsViewComponentTypeEnum>(
      const <QuizzesStudentsViewComponentTypeEnum>[
        _$quizzesStudentsViewComponentTypeEnum_CG,
        _$quizzesStudentsViewComponentTypeEnum_CS,
      ],
    );

Serializer<QuizzesStudentsViewComponentTypeEnum>
_$quizzesStudentsViewComponentTypeEnumSerializer =
    _$QuizzesStudentsViewComponentTypeEnumSerializer();

class _$QuizzesStudentsViewComponentTypeEnumSerializer
    implements PrimitiveSerializer<QuizzesStudentsViewComponentTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CG': 'CG',
    'CS': 'CS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CG': 'CG',
    'CS': 'CS',
  };

  @override
  final Iterable<Type> types = const <Type>[
    QuizzesStudentsViewComponentTypeEnum,
  ];
  @override
  final String wireName = 'QuizzesStudentsViewComponentTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    QuizzesStudentsViewComponentTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  QuizzesStudentsViewComponentTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => QuizzesStudentsViewComponentTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$QuizzesStudentsView extends QuizzesStudentsView {
  @override
  final String? id;
  @override
  final String? studentId;
  @override
  final String? quizId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final QuizzesStudentsViewComponentTypeEnum? componentType;
  @override
  final String? chapterTitles;
  @override
  final int? difficultyLevel;
  @override
  final int? questionsCount;
  @override
  final int? maxTime;
  @override
  final int? correctAnswers;
  @override
  final String? createdBy;
  @override
  final DateTime? assignedAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? endTime;
  @override
  final DateTime? endedTime;

  factory _$QuizzesStudentsView([
    void Function(QuizzesStudentsViewBuilder)? updates,
  ]) => (QuizzesStudentsViewBuilder()..update(updates))._build();

  _$QuizzesStudentsView._({
    this.id,
    this.studentId,
    this.quizId,
    this.title,
    this.description,
    this.componentType,
    this.chapterTitles,
    this.difficultyLevel,
    this.questionsCount,
    this.maxTime,
    this.correctAnswers,
    this.createdBy,
    this.assignedAt,
    this.startedAt,
    this.endTime,
    this.endedTime,
  }) : super._();
  @override
  QuizzesStudentsView rebuild(
    void Function(QuizzesStudentsViewBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  QuizzesStudentsViewBuilder toBuilder() =>
      QuizzesStudentsViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizzesStudentsView &&
        id == other.id &&
        studentId == other.studentId &&
        quizId == other.quizId &&
        title == other.title &&
        description == other.description &&
        componentType == other.componentType &&
        chapterTitles == other.chapterTitles &&
        difficultyLevel == other.difficultyLevel &&
        questionsCount == other.questionsCount &&
        maxTime == other.maxTime &&
        correctAnswers == other.correctAnswers &&
        createdBy == other.createdBy &&
        assignedAt == other.assignedAt &&
        startedAt == other.startedAt &&
        endTime == other.endTime &&
        endedTime == other.endedTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, studentId.hashCode);
    _$hash = $jc(_$hash, quizId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, componentType.hashCode);
    _$hash = $jc(_$hash, chapterTitles.hashCode);
    _$hash = $jc(_$hash, difficultyLevel.hashCode);
    _$hash = $jc(_$hash, questionsCount.hashCode);
    _$hash = $jc(_$hash, maxTime.hashCode);
    _$hash = $jc(_$hash, correctAnswers.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, assignedAt.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, endedTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuizzesStudentsView')
          ..add('id', id)
          ..add('studentId', studentId)
          ..add('quizId', quizId)
          ..add('title', title)
          ..add('description', description)
          ..add('componentType', componentType)
          ..add('chapterTitles', chapterTitles)
          ..add('difficultyLevel', difficultyLevel)
          ..add('questionsCount', questionsCount)
          ..add('maxTime', maxTime)
          ..add('correctAnswers', correctAnswers)
          ..add('createdBy', createdBy)
          ..add('assignedAt', assignedAt)
          ..add('startedAt', startedAt)
          ..add('endTime', endTime)
          ..add('endedTime', endedTime))
        .toString();
  }
}

class QuizzesStudentsViewBuilder
    implements Builder<QuizzesStudentsView, QuizzesStudentsViewBuilder> {
  _$QuizzesStudentsView? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _studentId;
  String? get studentId => _$this._studentId;
  set studentId(String? studentId) => _$this._studentId = studentId;

  String? _quizId;
  String? get quizId => _$this._quizId;
  set quizId(String? quizId) => _$this._quizId = quizId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  QuizzesStudentsViewComponentTypeEnum? _componentType;
  QuizzesStudentsViewComponentTypeEnum? get componentType =>
      _$this._componentType;
  set componentType(QuizzesStudentsViewComponentTypeEnum? componentType) =>
      _$this._componentType = componentType;

  String? _chapterTitles;
  String? get chapterTitles => _$this._chapterTitles;
  set chapterTitles(String? chapterTitles) =>
      _$this._chapterTitles = chapterTitles;

  int? _difficultyLevel;
  int? get difficultyLevel => _$this._difficultyLevel;
  set difficultyLevel(int? difficultyLevel) =>
      _$this._difficultyLevel = difficultyLevel;

  int? _questionsCount;
  int? get questionsCount => _$this._questionsCount;
  set questionsCount(int? questionsCount) =>
      _$this._questionsCount = questionsCount;

  int? _maxTime;
  int? get maxTime => _$this._maxTime;
  set maxTime(int? maxTime) => _$this._maxTime = maxTime;

  int? _correctAnswers;
  int? get correctAnswers => _$this._correctAnswers;
  set correctAnswers(int? correctAnswers) =>
      _$this._correctAnswers = correctAnswers;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _assignedAt;
  DateTime? get assignedAt => _$this._assignedAt;
  set assignedAt(DateTime? assignedAt) => _$this._assignedAt = assignedAt;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  DateTime? _endedTime;
  DateTime? get endedTime => _$this._endedTime;
  set endedTime(DateTime? endedTime) => _$this._endedTime = endedTime;

  QuizzesStudentsViewBuilder() {
    QuizzesStudentsView._defaults(this);
  }

  QuizzesStudentsViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _studentId = $v.studentId;
      _quizId = $v.quizId;
      _title = $v.title;
      _description = $v.description;
      _componentType = $v.componentType;
      _chapterTitles = $v.chapterTitles;
      _difficultyLevel = $v.difficultyLevel;
      _questionsCount = $v.questionsCount;
      _maxTime = $v.maxTime;
      _correctAnswers = $v.correctAnswers;
      _createdBy = $v.createdBy;
      _assignedAt = $v.assignedAt;
      _startedAt = $v.startedAt;
      _endTime = $v.endTime;
      _endedTime = $v.endedTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuizzesStudentsView other) {
    _$v = other as _$QuizzesStudentsView;
  }

  @override
  void update(void Function(QuizzesStudentsViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuizzesStudentsView build() => _build();

  _$QuizzesStudentsView _build() {
    final _$result =
        _$v ??
        _$QuizzesStudentsView._(
          id: id,
          studentId: studentId,
          quizId: quizId,
          title: title,
          description: description,
          componentType: componentType,
          chapterTitles: chapterTitles,
          difficultyLevel: difficultyLevel,
          questionsCount: questionsCount,
          maxTime: maxTime,
          correctAnswers: correctAnswers,
          createdBy: createdBy,
          assignedAt: assignedAt,
          startedAt: startedAt,
          endTime: endTime,
          endedTime: endedTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
