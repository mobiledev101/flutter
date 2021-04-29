import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Authentication extends Equatable {
  final String user;
  final String password;

  Authentication(
      {@required this.user,
      @required this.password})
      : super();

  @override
  List<Object> get props => [];
}
