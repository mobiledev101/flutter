import 'package:PostApp/feature/authentication/data/datasources/local_authentication_datasource.dart';
import 'package:PostApp/feature/authentication/data/datasources/remote_authentication_datasource.dart';
import 'package:PostApp/feature/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:PostApp/feature/authentication/domain/repositories/authentication_repository.dart';
import 'package:PostApp/feature/authentication/domain/usecases/authentication.dart';
import 'package:PostApp/feature/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'core/network/network_info.dart';

final instance = GetIt.instance;

Future<void> init() async {
  ///Blocs
  instance.registerFactory(() => AuthenticationBloc(instance()));

  ///User Case
  instance.registerLazySingleton(() => AuthenticationUserCase(instance()));

  ///Repository
  instance.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(
      remoteDataSource: instance(),
      networkInfo: instance(),
      localDataSource: instance(),
    ),
  );

  ///Datasource
  instance.registerLazySingleton<LocalAuthenticationDataSource>(
      () => LocalAuthenticationDataSourceImpl());
  instance.registerLazySingleton<RemoteAuthenticationDataSource>(
      () => RemoteAuthenticationDataSourceImpl(client: instance()));

  ///Core
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(dataConnectionChecker: instance()));

  ///External
  instance.registerLazySingleton(() => http.Client());
  instance.registerLazySingleton(() => DataConnectionChecker());
}
