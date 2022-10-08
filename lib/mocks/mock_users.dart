import 'package:scaffold_class_app/model/user_credential.dart';

abstract class MockUsers {
  static List<UserCredential> getUsers() {
    return [
      UserCredential(email: "deyvid@gmail.com", password: "123456"),
      UserCredential(email: "ana@gmail.com", password: "12345678")
    ];
  }
}
