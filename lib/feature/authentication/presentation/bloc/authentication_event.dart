part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent {}


class LoginEvent extends AuthenticationEvent{
  final String user;
  final String password;

  LoginEvent(this.user, this.password);

}