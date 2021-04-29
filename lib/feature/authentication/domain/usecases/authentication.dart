import 'package:PostApp/core/error/failure.dart';
import 'package:PostApp/core/usercases/usercases.dart';
import 'package:PostApp/feature/authentication/domain/entities/authentication.dart';
import 'package:PostApp/feature/authentication/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class AuthenticationUserCase implements UserCase<Authentication, Params>{
  final AuthenticationRepository repository;

  AuthenticationUserCase(this.repository);

  @override
  Future<Either<Failure, Authentication>> call(Params params) async {
    return await repository.login(params.user,params.password);
  }
}

class Params extends Equatable {
  final String user;
  final String password;

  Params({@required this.user, @required this.password});

  @override
  List<Object> get props => [];
}
