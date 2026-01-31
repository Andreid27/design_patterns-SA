//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quizzes_students_view.g.dart';

/// QuizzesStudentsView
///
/// Properties:
/// * [id] 
/// * [studentId] 
/// * [quizId] 
/// * [title] 
/// * [description] 
/// * [componentType] 
/// * [chapterTitles] 
/// * [difficultyLevel] 
/// * [questionsCount] 
/// * [maxTime] 
/// * [correctAnswers] 
/// * [createdBy] 
/// * [assignedAt] 
/// * [startedAt] 
/// * [endTime] 
/// * [endedTime] 
@BuiltValue()
abstract class QuizzesStudentsView implements Built<QuizzesStudentsView, QuizzesStudentsViewBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'studentId')
  String? get studentId;

  @BuiltValueField(wireName: r'quizId')
  String? get quizId;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'componentType')
  QuizzesStudentsViewComponentTypeEnum? get componentType;
  // enum componentTypeEnum {  CG,  CS,  };

  @BuiltValueField(wireName: r'chapterTitles')
  String? get chapterTitles;

  @BuiltValueField(wireName: r'difficultyLevel')
  int? get difficultyLevel;

  @BuiltValueField(wireName: r'questionsCount')
  int? get questionsCount;

  @BuiltValueField(wireName: r'maxTime')
  int? get maxTime;

  @BuiltValueField(wireName: r'correctAnswers')
  int? get correctAnswers;

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'assignedAt')
  DateTime? get assignedAt;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'endTime')
  DateTime? get endTime;

  @BuiltValueField(wireName: r'endedTime')
  DateTime? get endedTime;

  QuizzesStudentsView._();

  factory QuizzesStudentsView([void updates(QuizzesStudentsViewBuilder b)]) = _$QuizzesStudentsView;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuizzesStudentsViewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuizzesStudentsView> get serializer => _$QuizzesStudentsViewSerializer();
}

class _$QuizzesStudentsViewSerializer implements PrimitiveSerializer<QuizzesStudentsView> {
  @override
  final Iterable<Type> types = const [QuizzesStudentsView, _$QuizzesStudentsView];

  @override
  final String wireName = r'QuizzesStudentsView';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuizzesStudentsView object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.studentId != null) {
      yield r'studentId';
      yield serializers.serialize(
        object.studentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.quizId != null) {
      yield r'quizId';
      yield serializers.serialize(
        object.quizId,
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
        specifiedType: const FullType(QuizzesStudentsViewComponentTypeEnum),
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
    if (object.correctAnswers != null) {
      yield r'correctAnswers';
      yield serializers.serialize(
        object.correctAnswers,
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
    if (object.assignedAt != null) {
      yield r'assignedAt';
      yield serializers.serialize(
        object.assignedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.endedTime != null) {
      yield r'endedTime';
      yield serializers.serialize(
        object.endedTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuizzesStudentsView object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuizzesStudentsViewBuilder result,
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
        case r'studentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studentId = valueDes;
          break;
        case r'quizId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quizId = valueDes;
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
            specifiedType: const FullType(QuizzesStudentsViewComponentTypeEnum),
          ) as QuizzesStudentsViewComponentTypeEnum;
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
        case r'correctAnswers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.correctAnswers = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdBy = valueDes;
          break;
        case r'assignedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.assignedAt = valueDes;
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startedAt = valueDes;
          break;
        case r'endTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endTime = valueDes;
          break;
        case r'endedTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endedTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuizzesStudentsView deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuizzesStudentsViewBuilder();
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

class QuizzesStudentsViewComponentTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CG')
  static const QuizzesStudentsViewComponentTypeEnum CG = _$quizzesStudentsViewComponentTypeEnum_CG;
  @BuiltValueEnumConst(wireName: r'CS')
  static const QuizzesStudentsViewComponentTypeEnum CS = _$quizzesStudentsViewComponentTypeEnum_CS;

  static Serializer<QuizzesStudentsViewComponentTypeEnum> get serializer => _$quizzesStudentsViewComponentTypeEnumSerializer;

  const QuizzesStudentsViewComponentTypeEnum._(String name): super(name);

  static BuiltSet<QuizzesStudentsViewComponentTypeEnum> get values => _$quizzesStudentsViewComponentTypeEnumValues;
  static QuizzesStudentsViewComponentTypeEnum valueOf(String name) => _$quizzesStudentsViewComponentTypeEnumValueOf(name);
}

