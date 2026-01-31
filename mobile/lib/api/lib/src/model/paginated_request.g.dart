// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedRequest extends PaginatedRequest {
  @override
  final BuiltList<FilterCriteriaObject>? filters;
  @override
  final BuiltList<SortCriteria>? sorters;
  @override
  final int? page;
  @override
  final int? pageSize;

  factory _$PaginatedRequest([
    void Function(PaginatedRequestBuilder)? updates,
  ]) => (PaginatedRequestBuilder()..update(updates))._build();

  _$PaginatedRequest._({this.filters, this.sorters, this.page, this.pageSize})
    : super._();
  @override
  PaginatedRequest rebuild(void Function(PaginatedRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedRequestBuilder toBuilder() =>
      PaginatedRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedRequest &&
        filters == other.filters &&
        sorters == other.sorters &&
        page == other.page &&
        pageSize == other.pageSize;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, sorters.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaginatedRequest')
          ..add('filters', filters)
          ..add('sorters', sorters)
          ..add('page', page)
          ..add('pageSize', pageSize))
        .toString();
  }
}

class PaginatedRequestBuilder
    implements Builder<PaginatedRequest, PaginatedRequestBuilder> {
  _$PaginatedRequest? _$v;

  ListBuilder<FilterCriteriaObject>? _filters;
  ListBuilder<FilterCriteriaObject> get filters =>
      _$this._filters ??= ListBuilder<FilterCriteriaObject>();
  set filters(ListBuilder<FilterCriteriaObject>? filters) =>
      _$this._filters = filters;

  ListBuilder<SortCriteria>? _sorters;
  ListBuilder<SortCriteria> get sorters =>
      _$this._sorters ??= ListBuilder<SortCriteria>();
  set sorters(ListBuilder<SortCriteria>? sorters) => _$this._sorters = sorters;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  PaginatedRequestBuilder() {
    PaginatedRequest._defaults(this);
  }

  PaginatedRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _sorters = $v.sorters?.toBuilder();
      _page = $v.page;
      _pageSize = $v.pageSize;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaginatedRequest other) {
    _$v = other as _$PaginatedRequest;
  }

  @override
  void update(void Function(PaginatedRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedRequest build() => _build();

  _$PaginatedRequest _build() {
    _$PaginatedRequest _$result;
    try {
      _$result =
          _$v ??
          _$PaginatedRequest._(
            filters: _filters?.build(),
            sorters: _sorters?.build(),
            page: page,
            pageSize: pageSize,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'sorters';
        _sorters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PaginatedRequest',
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
