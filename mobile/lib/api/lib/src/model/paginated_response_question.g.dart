// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response_question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedResponseQuestion extends PaginatedResponseQuestion {
  @override
  final BuiltList<Question>? data;
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

  factory _$PaginatedResponseQuestion([
    void Function(PaginatedResponseQuestionBuilder)? updates,
  ]) => (PaginatedResponseQuestionBuilder()..update(updates))._build();

  _$PaginatedResponseQuestion._({
    this.data,
    this.page,
    this.totalPages,
    this.totalCount,
    this.filterOptions,
    this.currentRequest,
  }) : super._();
  @override
  PaginatedResponseQuestion rebuild(
    void Function(PaginatedResponseQuestionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PaginatedResponseQuestionBuilder toBuilder() =>
      PaginatedResponseQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedResponseQuestion &&
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
    return (newBuiltValueToStringHelper(r'PaginatedResponseQuestion')
          ..add('data', data)
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('totalCount', totalCount)
          ..add('filterOptions', filterOptions)
          ..add('currentRequest', currentRequest))
        .toString();
  }
}

class PaginatedResponseQuestionBuilder
    implements
        Builder<PaginatedResponseQuestion, PaginatedResponseQuestionBuilder> {
  _$PaginatedResponseQuestion? _$v;

  ListBuilder<Question>? _data;
  ListBuilder<Question> get data => _$this._data ??= ListBuilder<Question>();
  set data(ListBuilder<Question>? data) => _$this._data = data;

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

  PaginatedResponseQuestionBuilder() {
    PaginatedResponseQuestion._defaults(this);
  }

  PaginatedResponseQuestionBuilder get _$this {
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
  void replace(PaginatedResponseQuestion other) {
    _$v = other as _$PaginatedResponseQuestion;
  }

  @override
  void update(void Function(PaginatedResponseQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedResponseQuestion build() => _build();

  _$PaginatedResponseQuestion _build() {
    _$PaginatedResponseQuestion _$result;
    try {
      _$result =
          _$v ??
          _$PaginatedResponseQuestion._(
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
          r'PaginatedResponseQuestion',
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
