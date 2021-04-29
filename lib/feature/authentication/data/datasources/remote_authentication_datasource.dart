import 'dart:convert';

import 'package:PostApp/feature/authentication/domain/entities/authentication.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

abstract class RemoteAuthenticationDataSource {

  Future<Authentication> login(String user, String password);
}

class RemoteAuthenticationDataSourceImpl extends RemoteAuthenticationDataSource {
  final http.Client client;

  RemoteAuthenticationDataSourceImpl({@required this.client});

  @override
  Future<Authentication> login(String user, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
