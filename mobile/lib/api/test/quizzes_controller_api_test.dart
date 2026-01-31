import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for QuizzesControllerApi
void main() {
  final instance = Openapi().getQuizzesControllerApi();

  group(QuizzesControllerApi, () {
    // Assign a quiz to a student.
    //
    //Future assign(BuiltList<AssignQuizDTO> assignQuizDTO) async
    test('test assign', () async {
      // TODO
    });

    // Create a new quiz.
    //
    //Future create(QuizDTO quizDTO) async
    test('test create', () async {
      // TODO
    });

    // Create a new quiz with all new questions.
    //
    //Future createComplete(QuizWriteDTO quizWriteDTO) async
    test('test createComplete', () async {
      // TODO
    });

    // Delete an existing quiz.
    //
    //Future delete(String id) async
    test('test delete', () async {
      // TODO
    });

    // Delete a assigned quiz attempt of a student.
    //
    //Future deleteAssigned(String id) async
    test('test deleteAssigned', () async {
      // TODO
    });

    // Get quiz by id
    //
    //Future<QuizDTO> get1(String id) async
    test('test get1', () async {
      // TODO
    });

    // Get quiz by id
    //
    //Future<SubmitQuizDTO> getAttempt(String id) async
    test('test getAttempt', () async {
      // TODO
    });

    // Get quiz student view by id
    //
    //Future<QuizzesStudentsView> getAttemptPreview(String id) async
    test('test getAttemptPreview', () async {
      // TODO
    });

    // Get student stats by id
    //
    //Future<StudentStatsDTO> getDashboardStats({ int days }) async
    test('test getDashboardStats', () async {
      // TODO
    });

    // Get quiz by id
    //
    //Future<StudentStatsDTO> getDashboardStats1(String id, { int days }) async
    test('test getDashboardStats1', () async {
      // TODO
    });

    // Get paginated quizzes
    //
    //Future<PaginatedResponseQuizzesView> getPaginated(PaginatedRequest paginatedRequest) async
    test('test getPaginated', () async {
      // TODO
    });

    // Get paginated quizzes
    //
    //Future<PaginatedResponseQuizzesStudentsView> getPaginatedQuizStudent(PaginatedRequest paginatedRequest) async
    test('test getPaginatedQuizStudent', () async {
      // TODO
    });

    // Start quiz by id
    //
    //Future<QuizDTO> start(String id) async
    test('test start', () async {
      // TODO
    });

    // Submit a quiz.
    //
    //Future<SubmitQuizDTO> submit(SubmitQuizDTO submitQuizDTO) async
    test('test submit', () async {
      // TODO
    });

    // Update an existing quiz.
    //
    //Future update(QuizDTO quizDTO) async
    test('test update', () async {
      // TODO
    });

    // Update quiz with all new questions.
    //
    //Future updateComplete(QuizWriteDTO quizWriteDTO) async
    test('test updateComplete', () async {
      // TODO
    });

  });
}
