import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalAuthenticationDataSource {

  Future<bool> cacheLogin(String user, String password);

  Future<String> getUser();

  Future<String> getPassword();
}

class LocalAuthenticationDataSourceImpl implements LocalAuthenticationDataSource {
  final _authentication = "authentication";

  @override
  Future<bool> cacheLogin(String user, String password) {
    // TODO: implement cacheLogin
    throw UnimplementedError();
  }

  @override
  Future<String> getPassword() {
    // TODO: implement getPassword
    throw UnimplementedError();
  }

  @override
  Future<String> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

}
