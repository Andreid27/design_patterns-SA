import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for QuestionsControllerApi
void main() {
  final instance = Openapi().getQuestionsControllerApi();

  group(QuestionsControllerApi, () {
    // Create a new question.
    //
    //Future create1(QuestionDTO questionDTO) async
    test('test create1', () async {
      // TODO
    });

    // Delete a existing question.
    //
    //Future delete1(String id) async
    test('test delete1', () async {
      // TODO
    });

    // Get question by id
    //
    //Future<QuestionDTO> get2(String id) async
    test('test get2', () async {
      // TODO
    });

    // Get paginated questions
    //
    //Future<PaginatedResponseQuestion> getPaginated1(PaginatedRequest paginatedRequest) async
    test('test getPaginated1', () async {
      // TODO
    });

    // Update a existing student profile.
    //
    //Future update1(QuestionDTO questionDTO) async
    test('test update1', () async {
      // TODO
    });

  });
}
