// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response_chapter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedResponseChapter extends PaginatedResponseChapter {
  @override
  final BuiltList<Chapter>? data;
  @override
  final int? page;
  @override
  final int? totalPages;
  @override
  final int? totalCount;
  @override
  final BuiltList<FilterOptionObject>? filterOptions;
  @override
  final PaginatedRequest? currentRequest;

  factory _$PaginatedResponseChapter([
    void Function(PaginatedResponseChapterBuilder)? updates,
  ]) => (PaginatedResponseChapterBuilder()..update(updates))._build();

  _$PaginatedResponseChapter._({
    this.data,
    this.page,
    this.totalPages,
    this.totalCount,
    this.filterOptions,
    this.currentRequest,
  }) : super._();
  @override
  PaginatedResponseChapter rebuild(
    void Function(PaginatedResponseChapterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PaginatedResponseChapterBuilder toBuilder() =>
      PaginatedResponseChapterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedResponseChapter &&
        data == other.data &&
        page == other.page &&
        totalPages == other.totalPages &&
        totalCount == other.totalCount &&
        filterOptions == other.filterOptions &&
        currentRequest == other.currentRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jc(_$hash, filterOptions.hashCode);
    _$hash = $jc(_$hash, currentRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaginatedResponseChapter')
          ..add('data', data)
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('totalCount', totalCount)
          ..add('filterOptions', filterOptions)
          ..add('currentRequest', currentRequest))
        .toString();
  }
}

class PaginatedResponseChapterBuilder
    implements
        Builder<PaginatedResponseChapter, PaginatedResponseChapterBuilder> {
  _$PaginatedResponseChapter? _$v;

  ListBuilder<Chapter>? _data;
  ListBuilder<Chapter> get data => _$this._data ??= ListBuilder<Chapter>();
  set data(ListBuilder<Chapter>? data) => _$this._data = data;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ListBuilder<FilterOptionObject>? _filterOptions;
  ListBuilder<FilterOptionObject> get filterOptions =>
      _$this._filterOptions ??= ListBuilder<FilterOptionObject>();
  set filterOptions(ListBuilder<FilterOptionObject>? filterOptions) =>
      _$this._filterOptions = filterOptions;

  PaginatedRequestBuilder? _currentRequest;
  PaginatedRequestBuilder get currentRequest =>
      _$this._currentRequest ??= PaginatedRequestBuilder();
  set currentRequest(PaginatedRequestBuilder? currentRequest) =>
      _$this._currentRequest = currentRequest;

  PaginatedResponseChapterBuilder() {
    PaginatedResponseChapter._defaults(this);
  }

  PaginatedResponseChapterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _page = $v.page;
      _totalPages = $v.totalPages;
      _totalCount = $v.totalCount;
      _filterOptions = $v.filterOptions?.toBuilder();
      _currentRequest = $v.currentRequest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaginatedResponseChapter other) {
    _$v = other as _$PaginatedResponseChapter;
  }

  @override
  void update(void Function(PaginatedResponseChapterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedResponseChapter build() => _build();

  _$PaginatedResponseChapter _build() {
    _$PaginatedResponseChapter _$result;
    try {
      _$result =
          _$v ??
          _$PaginatedResponseChapter._(
            data: _data?.build(),
            page: page,
            totalPages: totalPages,
            totalCount: totalCount,
            filterOptions: _filterOptions?.build(),
            currentRequest: _currentRequest?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();

        _$failedField = 'filterOptions';
        _filterOptions?.build();
        _$failedField = 'currentRequest';
        _currentRequest?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PaginatedResponseChapter',
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
