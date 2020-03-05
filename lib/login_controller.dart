import 'package:aqueduct/aqueduct.dart';
import 'package:flutter_course_server/models/user.dart';

class LoginController extends ResourceController {
  static final JWT =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6Ik1hcmN1cyBDb3N0YSIsImlhdCI6MTUxNjIzOTAyMn0.szh0D9rH5pnk9IPRVG47tn5A90sPHluli24mVrCzkGQ';

  @Operation.post()
  Future<Response> validateUser(@Bind.body() User user) async {
    if (user.email == 'marcus.costa@redspark.io' && user.password == '1234') {
      return Response.ok(
        null,
        headers: {'Authorization': JWT},
      );
    }

    return Response.unauthorized();
  }
}
