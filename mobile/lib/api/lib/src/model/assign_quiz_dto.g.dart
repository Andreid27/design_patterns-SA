// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_quiz_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssignQuizDTO extends AssignQuizDTO {
  @override
  final String? quizId;
  @override
  final String? userId;
  @override
  final DateTime? startAfter;
  @override
  final DateTime? expires;

  factory _$AssignQuizDTO([void Function(AssignQuizDTOBuilder)? updates]) =>
      (AssignQuizDTOBuilder()..update(updates))._build();

  _$AssignQuizDTO._({this.quizId, this.userId, this.startAfter, this.expires})
    : super._();
  @override
  AssignQuizDTO rebuild(void Function(AssignQuizDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssignQuizDTOBuilder toBuilder() => AssignQuizDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssignQuizDTO &&
        quizId == other.quizId &&
        userId == other.userId &&
        startAfter == other.startAfter &&
        expires == other.expires;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, quizId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, startAfter.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssignQuizDTO')
          ..add('quizId', quizId)
          ..add('userId', userId)
          ..add('startAfter', startAfter)
          ..add('expires', expires))
        .toString();
  }
}

class AssignQuizDTOBuilder
    implements Builder<AssignQuizDTO, AssignQuizDTOBuilder> {
  _$AssignQuizDTO? _$v;

  String? _quizId;
  String? get quizId => _$this._quizId;
  set quizId(String? quizId) => _$this._quizId = quizId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DateTime? _startAfter;
  DateTime? get startAfter => _$this._startAfter;
  set startAfter(DateTime? startAfter) => _$this._startAfter = startAfter;

  DateTime? _expires;
  DateTime? get expires => _$this._expires;
  set expires(DateTime? expires) => _$this._expires = expires;

  AssignQuizDTOBuilder() {
    AssignQuizDTO._defaults(this);
  }

  AssignQuizDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quizId = $v.quizId;
      _userId = $v.userId;
      _startAfter = $v.startAfter;
      _expires = $v.expires;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssignQuizDTO other) {
    _$v = other as _$AssignQuizDTO;
  }

  @override
  void update(void Function(AssignQuizDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssignQuizDTO build() => _build();

  _$AssignQuizDTO _build() {
    final _$result =
        _$v ??
        _$AssignQuizDTO._(
          quizId: quizId,
          userId: userId,
          startAfter: startAfter,
          expires: expires,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
