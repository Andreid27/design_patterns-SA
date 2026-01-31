//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sort_criteria.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/filter_criteria_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paginated_request.g.dart';

/// PaginatedRequest
///
/// Properties:
/// * [filters] 
/// * [sorters] 
/// * [page] 
/// * [pageSize] 
@BuiltValue()
abstract class PaginatedRequest implements Built<PaginatedRequest, PaginatedRequestBuilder> {
  @BuiltValueField(wireName: r'filters')
  BuiltList<FilterCriteriaObject>? get filters;

  @BuiltValueField(wireName: r'sorters')
  BuiltList<SortCriteria>? get sorters;

  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'pageSize')
  int? get pageSize;

  PaginatedRequest._();

  factory PaginatedRequest([void updates(PaginatedRequestBuilder b)]) = _$PaginatedRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaginatedRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaginatedRequest> get serializer => _$PaginatedRequestSerializer();
}

class _$PaginatedRequestSerializer implements PrimitiveSerializer<PaginatedRequest> {
  @override
  final Iterable<Type> types = const [PaginatedRequest, _$PaginatedRequest];

  @override
  final String wireName = r'PaginatedRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaginatedRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(BuiltList, [FullType(FilterCriteriaObject)]),
      );
    }
    if (object.sorters != null) {
      yield r'sorters';
      yield serializers.serialize(
        object.sorters,
        specifiedType: const FullType(BuiltList, [FullType(SortCriteria)]),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.pageSize != null) {
      yield r'pageSize';
      yield serializers.serialize(
        object.pageSize,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaginatedRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaginatedRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FilterCriteriaObject)]),
          ) as BuiltList<FilterCriteriaObject>;
          result.filters.replace(valueDes);
          break;
        case r'sorters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SortCriteria)]),
          ) as BuiltList<SortCriteria>;
          result.sorters.replace(valueDes);
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'pageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaginatedRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaginatedRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

