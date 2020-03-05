import 'package:aqueduct/aqueduct.dart';
import 'package:flutter_course_server/login_controller.dart';

class MeController extends ResourceController {

  final _me =
  {
    'id': 1,
    'name': 'Marcus Costa',
    'points': 123,
    'image_path': '',
  };

  @Operation.get()
  Future<Response> me(@Bind.header('Authorization') String authorization) async {
    if (authorization == LoginController.JWT) {
      return Response.ok(_me);
    }

    return Response.unauthorized();
  }

}