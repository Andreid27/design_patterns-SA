import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ChaptersControllerApi
void main() {
  final instance = Openapi().getChaptersControllerApi();

  group(ChaptersControllerApi, () {
    // Get chapters by id
    //
    //Future<BuiltList<ChapterDTO>> callGet(BuiltList<ChapterDTO> chapterDTO) async
    test('test callGet', () async {
      // TODO
    });

    // Create a new chapter.
    //
    //Future create2(ChapterDTO chapterDTO) async
    test('test create2', () async {
      // TODO
    });

    // Delete an existing chapter.
    //
    //Future delete2(String id) async
    test('test delete2', () async {
      // TODO
    });

    // Get chapter by id
    //
    //Future<ChapterDTO> get3(String id) async
    test('test get3', () async {
      // TODO
    });

    // Get paginated chapters
    //
    //Future<PaginatedResponseChapter> getPaginated2(PaginatedRequest paginatedRequest) async
    test('test getPaginated2', () async {
      // TODO
    });

    // Update an existing chapter.
    //
    //Future update2(ChapterDTO chapterDTO) async
    test('test update2', () async {
      // TODO
    });

  });
}
