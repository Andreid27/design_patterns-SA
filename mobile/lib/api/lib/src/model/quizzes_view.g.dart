// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quizzes_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuizzesViewComponentTypeEnum _$quizzesViewComponentTypeEnum_CG =
    const QuizzesViewComponentTypeEnum._('CG');
const QuizzesViewComponentTypeEnum _$quizzesViewComponentTypeEnum_CS =
    const QuizzesViewComponentTypeEnum._('CS');

QuizzesViewComponentTypeEnum _$quizzesViewComponentTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'CG':
      return _$quizzesViewComponentTypeEnum_CG;
    case 'CS':
      return _$quizzesViewComponentTypeEnum_CS;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QuizzesViewComponentTypeEnum>
_$quizzesViewComponentTypeEnumValues = BuiltSet<QuizzesViewComponentTypeEnum>(
  const <QuizzesViewComponentTypeEnum>[
    _$quizzesViewComponentTypeEnum_CG,
    _$quizzesViewComponentTypeEnum_CS,
  ],
);

Serializer<QuizzesViewComponentTypeEnum>
_$quizzesViewComponentTypeEnumSerializer =
    _$QuizzesViewComponentTypeEnumSerializer();

class _$QuizzesViewComponentTypeEnumSerializer
    implements PrimitiveSerializer<QuizzesViewComponentTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CG': 'CG',
    'CS': 'CS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CG': 'CG',
    'CS': 'CS',
  };

  @override
  final Iterable<Type> types = const <Type>[QuizzesViewComponentTypeEnum];
  @override
  final String wireName = 'QuizzesViewComponentTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    QuizzesViewComponentTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  QuizzesViewComponentTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => QuizzesViewComponentTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$QuizzesView extends QuizzesView {
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final QuizzesViewComponentTypeEnum? componentType;
  @override
  final String? chapterTitles;
  @override
  final int? difficultyLevel;
  @override
  final int? questionsCount;
  @override
  final int? maxTime;
  @override
  final String? createdBy;
  @override
  final DateTime? quizCreation;

  factory _$QuizzesView([void Function(QuizzesViewBuilder)? updates]) =>
      (QuizzesViewBuilder()..update(updates))._build();

  _$QuizzesView._({
    this.id,
    this.title,
    this.description,
    this.componentType,
    this.chapterTitles,
    this.difficultyLevel,
    this.questionsCount,
    this.maxTime,
    this.createdBy,
    this.quizCreation,
  }) : super._();
  @override
  QuizzesView rebuild(void Function(QuizzesViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuizzesViewBuilder toBuilder() => QuizzesViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizzesView &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        componentType == other.componentType &&
        chapterTitles == other.chapterTitles &&
        difficultyLevel == other.difficultyLevel &&
        questionsCount == other.questionsCount &&
        maxTime == other.maxTime &&
        createdBy == other.createdBy &&
        quizCreation == other.quizCreation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, componentType.hashCode);
    _$hash = $jc(_$hash, chapterTitles.hashCode);
    _$hash = $jc(_$hash, difficultyLevel.hashCode);
    _$hash = $jc(_$hash, questionsCount.hashCode);
    _$hash = $jc(_$hash, maxTime.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, quizCreation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuizzesView')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('componentType', componentType)
          ..add('chapterTitles', chapterTitles)
          ..add('difficultyLevel', difficultyLevel)
          ..add('questionsCount', questionsCount)
          ..add('maxTime', maxTime)
          ..add('createdBy', createdBy)
          ..add('quizCreation', quizCreation))
        .toString();
  }
}

class QuizzesViewBuilder implements Builder<QuizzesView, QuizzesViewBuilder> {
  _$QuizzesView? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  QuizzesViewComponentTypeEnum? _componentType;
  QuizzesViewComponentTypeEnum? get componentType => _$this._componentType;
  set componentType(QuizzesViewComponentTypeEnum? componentType) =>
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

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _quizCreation;
  DateTime? get quizCreation => _$this._quizCreation;
  set quizCreation(DateTime? quizCreation) =>
      _$this._quizCreation = quizCreation;

  QuizzesViewBuilder() {
    QuizzesView._defaults(this);
  }

  QuizzesViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _componentType = $v.componentType;
      _chapterTitles = $v.chapterTitles;
      _difficultyLevel = $v.difficultyLevel;
      _questionsCount = $v.questionsCount;
      _maxTime = $v.maxTime;
      _createdBy = $v.createdBy;
      _quizCreation = $v.quizCreation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuizzesView other) {
    _$v = other as _$QuizzesView;
  }

  @override
  void update(void Function(QuizzesViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuizzesView build() => _build();

  _$QuizzesView _build() {
    final _$result =
        _$v ??
        _$QuizzesView._(
          id: id,
          title: title,
          description: description,
          componentType: componentType,
          chapterTitles: chapterTitles,
          difficultyLevel: difficultyLevel,
          questionsCount: questionsCount,
          maxTime: maxTime,
          createdBy: createdBy,
          quizCreation: quizCreation,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
