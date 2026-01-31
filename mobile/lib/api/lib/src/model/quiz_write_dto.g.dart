// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_write_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuizWriteDTOComponentTypeEnum _$quizWriteDTOComponentTypeEnum_CG =
    const QuizWriteDTOComponentTypeEnum._('CG');
const QuizWriteDTOComponentTypeEnum _$quizWriteDTOComponentTypeEnum_CS =
    const QuizWriteDTOComponentTypeEnum._('CS');

QuizWriteDTOComponentTypeEnum _$quizWriteDTOComponentTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'CG':
      return _$quizWriteDTOComponentTypeEnum_CG;
    case 'CS':
      return _$quizWriteDTOComponentTypeEnum_CS;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QuizWriteDTOComponentTypeEnum>
_$quizWriteDTOComponentTypeEnumValues = BuiltSet<QuizWriteDTOComponentTypeEnum>(
  const <QuizWriteDTOComponentTypeEnum>[
    _$quizWriteDTOComponentTypeEnum_CG,
    _$quizWriteDTOComponentTypeEnum_CS,
  ],
);

Serializer<QuizWriteDTOComponentTypeEnum>
_$quizWriteDTOComponentTypeEnumSerializer =
    _$QuizWriteDTOComponentTypeEnumSerializer();

class _$QuizWriteDTOComponentTypeEnumSerializer
    implements PrimitiveSerializer<QuizWriteDTOComponentTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CG': 'CG',
    'CS': 'CS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CG': 'CG',
    'CS': 'CS',
  };

  @override
  final Iterable<Type> types = const <Type>[QuizWriteDTOComponentTypeEnum];
  @override
  final String wireName = 'QuizWriteDTOComponentTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    QuizWriteDTOComponentTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  QuizWriteDTOComponentTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => QuizWriteDTOComponentTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$QuizWriteDTO extends QuizWriteDTO {
  @override
  final String? id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final QuizWriteDTOComponentTypeEnum? componentType;
  @override
  final int? difficultyLevel;
  @override
  final int? maxTime;
  @override
  final BuiltList<String>? chaptersId;
  @override
  final BuiltList<QuestionDTO>? questionsList;

  factory _$QuizWriteDTO([void Function(QuizWriteDTOBuilder)? updates]) =>
      (QuizWriteDTOBuilder()..update(updates))._build();

  _$QuizWriteDTO._({
    this.id,
    required this.title,
    this.description,
    this.componentType,
    this.difficultyLevel,
    this.maxTime,
    this.chaptersId,
    this.questionsList,
  }) : super._();
  @override
  QuizWriteDTO rebuild(void Function(QuizWriteDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuizWriteDTOBuilder toBuilder() => QuizWriteDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizWriteDTO &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        componentType == other.componentType &&
        difficultyLevel == other.difficultyLevel &&
        maxTime == other.maxTime &&
        chaptersId == other.chaptersId &&
        questionsList == other.questionsList;
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
    _$hash = $jc(_$hash, questionsList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuizWriteDTO')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('componentType', componentType)
          ..add('difficultyLevel', difficultyLevel)
          ..add('maxTime', maxTime)
          ..add('chaptersId', chaptersId)
          ..add('questionsList', questionsList))
        .toString();
  }
}

class QuizWriteDTOBuilder
    implements Builder<QuizWriteDTO, QuizWriteDTOBuilder> {
  _$QuizWriteDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  QuizWriteDTOComponentTypeEnum? _componentType;
  QuizWriteDTOComponentTypeEnum? get componentType => _$this._componentType;
  set componentType(QuizWriteDTOComponentTypeEnum? componentType) =>
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

  ListBuilder<QuestionDTO>? _questionsList;
  ListBuilder<QuestionDTO> get questionsList =>
      _$this._questionsList ??= ListBuilder<QuestionDTO>();
  set questionsList(ListBuilder<QuestionDTO>? questionsList) =>
      _$this._questionsList = questionsList;

  QuizWriteDTOBuilder() {
    QuizWriteDTO._defaults(this);
  }

  QuizWriteDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _componentType = $v.componentType;
      _difficultyLevel = $v.difficultyLevel;
      _maxTime = $v.maxTime;
      _chaptersId = $v.chaptersId?.toBuilder();
      _questionsList = $v.questionsList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuizWriteDTO other) {
    _$v = other as _$QuizWriteDTO;
  }

  @override
  void update(void Function(QuizWriteDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuizWriteDTO build() => _build();

  _$QuizWriteDTO _build() {
    _$QuizWriteDTO _$result;
    try {
      _$result =
          _$v ??
          _$QuizWriteDTO._(
            id: id,
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'QuizWriteDTO',
              'title',
            ),
            description: description,
            componentType: componentType,
            difficultyLevel: difficultyLevel,
            maxTime: maxTime,
            chaptersId: _chaptersId?.build(),
            questionsList: _questionsList?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chaptersId';
        _chaptersId?.build();
        _$failedField = 'questionsList';
        _questionsList?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'QuizWriteDTO',
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
