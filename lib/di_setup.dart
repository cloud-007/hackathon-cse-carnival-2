import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:reachout/data/dart/local_data_source.dart';
import 'package:reachout/data/util/api_client.dart';
import 'package:reachout/data/util/auth_interceptor.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  // region:: Firebase module
  // endregion
  // region::cache module
  getIt.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
  // endregion
  // region:: network module
  const int timeOut = 120 * 1000;
  const String baseUrl = 'https://test.api.quizbit.co/api/';

  // Interceptor
  getIt.registerLazySingleton<AuthInterceptor>(
    () => AuthInterceptor(
      localDataSource: getIt(),
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
  // endregion
  // region:: data source module

  // region:: Local Data source
  getIt.registerLazySingleton<LocalDataSource>(
    () => LocalDataSource(sharedPref: getIt()),
  );

  // endregion
}
