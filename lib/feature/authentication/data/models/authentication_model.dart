import 'package:PostApp/feature/authentication/domain/entities/authentication.dart';
import 'package:flutter/foundation.dart';

class AuthenticationModel extends Authentication {
  AuthenticationModel(
      {@required user,
      @required password})
      : super(user: user, password: password);

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) {
    return AuthenticationModel(
        user: (json["user"] as String),
        password: (json["password"] as String));
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'password': password
    };
  }
}
