
import 'package:PostApp/core/error/failure.dart';
import 'package:PostApp/feature/authentication/domain/entities/authentication.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure,Authentication>> login(String user, String password);

}
