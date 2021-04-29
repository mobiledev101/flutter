part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState extends Equatable{
  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class Loading extends AuthenticationState {}

class Logged extends AuthenticationState {
  final Authentication authentication;

  Logged({@required this.authentication});

  @override
  List<Object> get props => [authentication];
}

class Logout extends AuthenticationState {}

class Error extends AuthenticationState {
  final String message;

  Error({@required this.message});

  @override
  List<Object> get props => [message];
}
