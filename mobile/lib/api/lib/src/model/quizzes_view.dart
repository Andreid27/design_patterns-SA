//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quizzes_view.g.dart';

/// QuizzesView
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [description] 
/// * [componentType] 
/// * [chapterTitles] 
/// * [difficultyLevel] 
/// * [questionsCount] 
/// * [maxTime] 
/// * [createdBy] 
/// * [quizCreation] 
@BuiltValue()
abstract class QuizzesView implements Built<QuizzesView, QuizzesViewBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'componentType')
  QuizzesViewComponentTypeEnum? get componentType;
  // enum componentTypeEnum {  CG,  CS,  };

  @BuiltValueField(wireName: r'chapterTitles')
  String? get chapterTitles;

  @BuiltValueField(wireName: r'difficultyLevel')
  int? get difficultyLevel;

  @BuiltValueField(wireName: r'questionsCount')
  int? get questionsCount;

  @BuiltValueField(wireName: r'maxTime')
  int? get maxTime;

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'quizCreation')
  DateTime? get quizCreation;

  QuizzesView._();

  factory QuizzesView([void updates(QuizzesViewBuilder b)]) = _$QuizzesView;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuizzesViewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuizzesView> get serializer => _$QuizzesViewSerializer();
}

class _$QuizzesViewSerializer implements PrimitiveSerializer<QuizzesView> {
  @override
  final Iterable<Type> types = const [QuizzesView, _$QuizzesView];

  @override
  final String wireName = r'QuizzesView';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuizzesView object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.componentType != null) {
      yield r'componentType';
      yield serializers.serialize(
        object.componentType,
        specifiedType: const FullType(QuizzesViewComponentTypeEnum),
      );
    }
    if (object.chapterTitles != null) {
      yield r'chapterTitles';
      yield serializers.serialize(
        object.chapterTitles,
        specifiedType: const FullType(String),
      );
    }
    if (object.difficultyLevel != null) {
      yield r'difficultyLevel';
      yield serializers.serialize(
        object.difficultyLevel,
        specifiedType: const FullType(int),
      );
    }
    if (object.questionsCount != null) {
      yield r'questionsCount';
      yield serializers.serialize(
        object.questionsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxTime != null) {
      yield r'maxTime';
      yield serializers.serialize(
        object.maxTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.quizCreation != null) {
      yield r'quizCreation';
      yield serializers.serialize(
        object.quizCreation,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuizzesView object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuizzesViewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'componentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuizzesViewComponentTypeEnum),
          ) as QuizzesViewComponentTypeEnum;
          result.componentType = valueDes;
          break;
        case r'chapterTitles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.chapterTitles = valueDes;
          break;
        case r'difficultyLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.difficultyLevel = valueDes;
          break;
        case r'questionsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.questionsCount = valueDes;
          break;
        case r'maxTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxTime = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdBy = valueDes;
          break;
        case r'quizCreation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.quizCreation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuizzesView deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuizzesViewBuilder();
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

class QuizzesViewComponentTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CG')
  static const QuizzesViewComponentTypeEnum CG = _$quizzesViewComponentTypeEnum_CG;
  @BuiltValueEnumConst(wireName: r'CS')
  static const QuizzesViewComponentTypeEnum CS = _$quizzesViewComponentTypeEnum_CS;

  static Serializer<QuizzesViewComponentTypeEnum> get serializer => _$quizzesViewComponentTypeEnumSerializer;

  const QuizzesViewComponentTypeEnum._(String name): super(name);

  static BuiltSet<QuizzesViewComponentTypeEnum> get values => _$quizzesViewComponentTypeEnumValues;
  static QuizzesViewComponentTypeEnum valueOf(String name) => _$quizzesViewComponentTypeEnumValueOf(name);
}

