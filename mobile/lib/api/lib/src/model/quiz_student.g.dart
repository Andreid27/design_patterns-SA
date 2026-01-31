// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_student.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuizStudent extends QuizStudent {
  @override
  final String? id;
  @override
  final DateTime? creation;
  @override
  final DateTime? expires;
  @override
  final DateTime? modified;
  @override
  final String? userId;
  @override
  final String? quizId;
  @override
  final String? createdBy;
  @override
  final DateTime? startAfter;
  @override
  final DateTime? startAt;
  @override
  final DateTime? endTime;
  @override
  final DateTime? endedTime;
  @override
  final int? correctAnswers;

  factory _$QuizStudent([void Function(QuizStudentBuilder)? updates]) =>
      (QuizStudentBuilder()..update(updates))._build();

  _$QuizStudent._({
    this.id,
    this.creation,
    this.expires,
    this.modified,
    this.userId,
    this.quizId,
    this.createdBy,
    this.startAfter,
    this.startAt,
    this.endTime,
    this.endedTime,
    this.correctAnswers,
  }) : super._();
  @override
  QuizStudent rebuild(void Function(QuizStudentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuizStudentBuilder toBuilder() => QuizStudentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizStudent &&
        id == other.id &&
        creation == other.creation &&
        expires == other.expires &&
        modified == other.modified &&
        userId == other.userId &&
        quizId == other.quizId &&
        createdBy == other.createdBy &&
        startAfter == other.startAfter &&
        startAt == other.startAt &&
        endTime == other.endTime &&
        endedTime == other.endedTime &&
        correctAnswers == other.correctAnswers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, creation.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jc(_$hash, modified.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, quizId.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, startAfter.hashCode);
    _$hash = $jc(_$hash, startAt.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, endedTime.hashCode);
    _$hash = $jc(_$hash, correctAnswers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuizStudent')
          ..add('id', id)
          ..add('creation', creation)
          ..add('expires', expires)
          ..add('modified', modified)
          ..add('userId', userId)
          ..add('quizId', quizId)
          ..add('createdBy', createdBy)
          ..add('startAfter', startAfter)
          ..add('startAt', startAt)
          ..add('endTime', endTime)
          ..add('endedTime', endedTime)
          ..add('correctAnswers', correctAnswers))
        .toString();
  }
}

class QuizStudentBuilder implements Builder<QuizStudent, QuizStudentBuilder> {
  _$QuizStudent? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _creation;
  DateTime? get creation => _$this._creation;
  set creation(DateTime? creation) => _$this._creation = creation;

  DateTime? _expires;
  DateTime? get expires => _$this._expires;
  set expires(DateTime? expires) => _$this._expires = expires;

  DateTime? _modified;
  DateTime? get modified => _$this._modified;
  set modified(DateTime? modified) => _$this._modified = modified;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _quizId;
  String? get quizId => _$this._quizId;
  set quizId(String? quizId) => _$this._quizId = quizId;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _startAfter;
  DateTime? get startAfter => _$this._startAfter;
  set startAfter(DateTime? startAfter) => _$this._startAfter = startAfter;

  DateTime? _startAt;
  DateTime? get startAt => _$this._startAt;
  set startAt(DateTime? startAt) => _$this._startAt = startAt;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  DateTime? _endedTime;
  DateTime? get endedTime => _$this._endedTime;
  set endedTime(DateTime? endedTime) => _$this._endedTime = endedTime;

  int? _correctAnswers;
  int? get correctAnswers => _$this._correctAnswers;
  set correctAnswers(int? correctAnswers) =>
      _$this._correctAnswers = correctAnswers;

  QuizStudentBuilder() {
    QuizStudent._defaults(this);
  }

  QuizStudentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _creation = $v.creation;
      _expires = $v.expires;
      _modified = $v.modified;
      _userId = $v.userId;
      _quizId = $v.quizId;
      _createdBy = $v.createdBy;
      _startAfter = $v.startAfter;
      _startAt = $v.startAt;
      _endTime = $v.endTime;
      _endedTime = $v.endedTime;
      _correctAnswers = $v.correctAnswers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuizStudent other) {
    _$v = other as _$QuizStudent;
  }

  @override
  void update(void Function(QuizStudentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuizStudent build() => _build();

  _$QuizStudent _build() {
    final _$result =
        _$v ??
        _$QuizStudent._(
          id: id,
          creation: creation,
          expires: expires,
          modified: modified,
          userId: userId,
          quizId: quizId,
          createdBy: createdBy,
          startAfter: startAfter,
          startAt: startAt,
          endTime: endTime,
          endedTime: endedTime,
          correctAnswers: correctAnswers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
