// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChapterDTO extends ChapterDTO {
  @override
  final String? id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? createdBy;

  factory _$ChapterDTO([void Function(ChapterDTOBuilder)? updates]) =>
      (ChapterDTOBuilder()..update(updates))._build();

  _$ChapterDTO._({
    this.id,
    required this.title,
    this.description,
    this.createdBy,
  }) : super._();
  @override
  ChapterDTO rebuild(void Function(ChapterDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChapterDTOBuilder toBuilder() => ChapterDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChapterDTO &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChapterDTO')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('createdBy', createdBy))
        .toString();
  }
}

class ChapterDTOBuilder implements Builder<ChapterDTO, ChapterDTOBuilder> {
  _$ChapterDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  ChapterDTOBuilder() {
    ChapterDTO._defaults(this);
  }

  ChapterDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _createdBy = $v.createdBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChapterDTO other) {
    _$v = other as _$ChapterDTO;
  }

  @override
  void update(void Function(ChapterDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChapterDTO build() => _build();

  _$ChapterDTO _build() {
    final _$result =
        _$v ??
        _$ChapterDTO._(
          id: id,
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'ChapterDTO',
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
