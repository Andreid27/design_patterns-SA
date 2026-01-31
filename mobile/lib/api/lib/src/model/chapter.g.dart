// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Chapter extends Chapter {
  @override
  final String? id;
  @override
  final DateTime? creation;
  @override
  final DateTime? expires;
  @override
  final DateTime? modified;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? createdBy;

  factory _$Chapter([void Function(ChapterBuilder)? updates]) =>
      (ChapterBuilder()..update(updates))._build();

  _$Chapter._({
    this.id,
    this.creation,
    this.expires,
    this.modified,
    required this.title,
    this.description,
    this.createdBy,
  }) : super._();
  @override
  Chapter rebuild(void Function(ChapterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChapterBuilder toBuilder() => ChapterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chapter &&
        id == other.id &&
        creation == other.creation &&
        expires == other.expires &&
        modified == other.modified &&
        title == other.title &&
        description == other.description &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, creation.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jc(_$hash, modified.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Chapter')
          ..add('id', id)
          ..add('creation', creation)
          ..add('expires', expires)
          ..add('modified', modified)
          ..add('title', title)
          ..add('description', description)
          ..add('createdBy', createdBy))
        .toString();
  }
}

class ChapterBuilder implements Builder<Chapter, ChapterBuilder> {
  _$Chapter? _$v;

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

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  ChapterBuilder() {
    Chapter._defaults(this);
  }

  ChapterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _creation = $v.creation;
      _expires = $v.expires;
      _modified = $v.modified;
      _title = $v.title;
      _description = $v.description;
      _createdBy = $v.createdBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Chapter other) {
    _$v = other as _$Chapter;
  }

  @override
  void update(void Function(ChapterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Chapter build() => _build();

  _$Chapter _build() {
    final _$result =
        _$v ??
        _$Chapter._(
          id: id,
          creation: creation,
          expires: expires,
          modified: modified,
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'Chapter',
            'title',
          ),
          description: description,
          createdBy: createdBy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
