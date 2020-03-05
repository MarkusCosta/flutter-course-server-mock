import 'package:flutter_course_server/flutter_course_server.dart';

class User extends Serializable {
  String email;
  String password;

  Map<String, dynamic> asMap() {
    return {
      'email': email,
      'password': password
    };
  }

  void readFromMap(Map<String, dynamic> inputMap) {
    email = inputMap['email'] as String;
    password = inputMap['password'] as String;
  }

}
