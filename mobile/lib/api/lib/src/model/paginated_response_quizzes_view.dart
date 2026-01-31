//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/filter_option_object.dart';
import 'package:openapi/src/model/quizzes_view.dart';
import 'package:openapi/src/model/paginated_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paginated_response_quizzes_view.g.dart';

/// PaginatedResponseQuizzesView
///
/// Properties:
/// * [data] 
/// * [page] 
/// * [totalPages] 
/// * [totalCount] 
/// * [filterOptions] 
/// * [currentRequest] 
@BuiltValue()
abstract class PaginatedResponseQuizzesView implements Built<PaginatedResponseQuizzesView, PaginatedResponseQuizzesViewBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<QuizzesView>? get data;

  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'totalPages')
  int? get totalPages;

  @BuiltValueField(wireName: r'totalCount')
  int? get totalCount;

  @BuiltValueField(wireName: r'filterOptions')
  BuiltList<FilterOptionObject>? get filterOptions;

  @BuiltValueField(wireName: r'currentRequest')
  PaginatedRequest? get currentRequest;

  PaginatedResponseQuizzesView._();

  factory PaginatedResponseQuizzesView([void updates(PaginatedResponseQuizzesViewBuilder b)]) = _$PaginatedResponseQuizzesView;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaginatedResponseQuizzesViewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaginatedResponseQuizzesView> get serializer => _$PaginatedResponseQuizzesViewSerializer();
}

class _$PaginatedResponseQuizzesViewSerializer implements PrimitiveSerializer<PaginatedResponseQuizzesView> {
  @override
  final Iterable<Type> types = const [PaginatedResponseQuizzesView, _$PaginatedResponseQuizzesView];

  @override
  final String wireName = r'PaginatedResponseQuizzesView';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaginatedResponseQuizzesView object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(QuizzesView)]),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalPages != null) {
      yield r'totalPages';
      yield serializers.serialize(
        object.totalPages,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalCount != null) {
      yield r'totalCount';
      yield serializers.serialize(
        object.totalCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.filterOptions != null) {
      yield r'filterOptions';
      yield serializers.serialize(
        object.filterOptions,
        specifiedType: const FullType(BuiltList, [FullType(FilterOptionObject)]),
      );
    }
    if (object.currentRequest != null) {
      yield r'currentRequest';
      yield serializers.serialize(
        object.currentRequest,
        specifiedType: const FullType(PaginatedRequest),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaginatedResponseQuizzesView object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaginatedResponseQuizzesViewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuizzesView)]),
          ) as BuiltList<QuizzesView>;
          result.data.replace(valueDes);
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'totalPages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPages = valueDes;
          break;
        case r'totalCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCount = valueDes;
          break;
        case r'filterOptions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FilterOptionObject)]),
          ) as BuiltList<FilterOptionObject>;
          result.filterOptions.replace(valueDes);
          break;
        case r'currentRequest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaginatedRequest),
          ) as PaginatedRequest;
          result.currentRequest.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaginatedResponseQuizzesView deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaginatedResponseQuizzesViewBuilder();
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

