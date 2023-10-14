import 'package:dio/dio.dart';
import 'package:reachout/data/datasource/remote/api/account_api.dart';
import 'package:reachout/data/datasource/remote/api/account_api_impl.dart';
import 'package:reachout/data/datasource/remote/util/api_client.dart';
import 'package:reachout/data/datasource/remote/util/auth_interceptor.dart';
import 'package:reachout/di_setup.dart';

Future<void> setUpNetworkModule() async {
  const int timeOut = 120 * 1000;
  const String baseUrl = 'https://cc.ovream.com/api/';

  // Interceptor
  getIt.registerLazySingleton<AuthInterceptor>(
    () => AuthInterceptor(
      accountLocalDataSource: getIt(),
    ),
  );

  // Client
  getIt.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: timeOut),
        receiveTimeout: const Duration(seconds: timeOut),
      ),
    )..interceptors.add(getIt<AuthInterceptor>()),
  );

  // ApiClient
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(client: getIt()),
  );

  // Api

  getIt.registerLazySingleton<AccountApi>(
    () => AccountApiImpl(client: getIt()),
  );
}
