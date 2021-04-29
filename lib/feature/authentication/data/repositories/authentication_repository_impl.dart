import 'package:PostApp/core/error/failure.dart';
import 'package:PostApp/core/network/network_info.dart';
import 'package:PostApp/feature/authentication/data/datasources/local_authentication_datasource.dart';
import 'package:PostApp/feature/authentication/data/datasources/remote_authentication_datasource.dart';
import 'package:PostApp/feature/authentication/domain/entities/authentication.dart';
import 'package:PostApp/feature/authentication/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final RemoteAuthenticationDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  final LocalAuthenticationDataSource localDataSource;

  AuthenticationRepositoryImpl(
      {@required this.remoteDataSource,
      @required this.networkInfo,
      @required this.localDataSource});

  @override
  Future<Either<Failure, Authentication>> login(String user, String password) async {
  }
}
