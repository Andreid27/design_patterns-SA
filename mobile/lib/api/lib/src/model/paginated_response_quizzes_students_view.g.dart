// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response_quizzes_students_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedResponseQuizzesStudentsView
    extends PaginatedResponseQuizzesStudentsView {
  @override
  final BuiltList<QuizzesStudentsView>? data;
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

  factory _$PaginatedResponseQuizzesStudentsView([
    void Function(PaginatedResponseQuizzesStudentsViewBuilder)? updates,
  ]) =>
      (PaginatedResponseQuizzesStudentsViewBuilder()..update(updates))._build();

  _$PaginatedResponseQuizzesStudentsView._({
    this.data,
    this.page,
    this.totalPages,
    this.totalCount,
    this.filterOptions,
    this.currentRequest,
  }) : super._();
  @override
  PaginatedResponseQuizzesStudentsView rebuild(
    void Function(PaginatedResponseQuizzesStudentsViewBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PaginatedResponseQuizzesStudentsViewBuilder toBuilder() =>
      PaginatedResponseQuizzesStudentsViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedResponseQuizzesStudentsView &&
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
    return (newBuiltValueToStringHelper(r'PaginatedResponseQuizzesStudentsView')
          ..add('data', data)
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('totalCount', totalCount)
          ..add('filterOptions', filterOptions)
          ..add('currentRequest', currentRequest))
        .toString();
  }
}

class PaginatedResponseQuizzesStudentsViewBuilder
    implements
        Builder<
          PaginatedResponseQuizzesStudentsView,
          PaginatedResponseQuizzesStudentsViewBuilder
        > {
  _$PaginatedResponseQuizzesStudentsView? _$v;

  ListBuilder<QuizzesStudentsView>? _data;
  ListBuilder<QuizzesStudentsView> get data =>
      _$this._data ??= ListBuilder<QuizzesStudentsView>();
  set data(ListBuilder<QuizzesStudentsView>? data) => _$this._data = data;

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

  PaginatedResponseQuizzesStudentsViewBuilder() {
    PaginatedResponseQuizzesStudentsView._defaults(this);
  }

  PaginatedResponseQuizzesStudentsViewBuilder get _$this {
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
  void replace(PaginatedResponseQuizzesStudentsView other) {
    _$v = other as _$PaginatedResponseQuizzesStudentsView;
  }

  @override
  void update(
    void Function(PaginatedResponseQuizzesStudentsViewBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedResponseQuizzesStudentsView build() => _build();

  _$PaginatedResponseQuizzesStudentsView _build() {
    _$PaginatedResponseQuizzesStudentsView _$result;
    try {
      _$result =
          _$v ??
          _$PaginatedResponseQuizzesStudentsView._(
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
          r'PaginatedResponseQuizzesStudentsView',
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
