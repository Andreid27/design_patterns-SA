import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UserControllerApi
void main() {
  final instance = Openapi().getUserControllerApi();

  group(UserControllerApi, () {
    //Future<BuiltList<UserRepresentation>> getUsersWithRole(String roleName) async
    test('test getUsersWithRole', () async {
      // TODO
    });

  });
}
