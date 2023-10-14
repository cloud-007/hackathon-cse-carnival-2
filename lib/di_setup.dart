import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:reachout/data/datasource/remote/api/account_api.dart';
import 'package:reachout/data/datasource/remote/api/account_api_impl.dart';
import 'package:reachout/data/datasource/remote/api/consultation_api.dart';
import 'package:reachout/data/datasource/remote/api/consultation_api_impl.dart';
import 'package:reachout/data/datasource/remote/util/api_client.dart';
import 'package:reachout/data/datasource/remote/util/auth_interceptor.dart';
import 'package:reachout/data/datasource/source/account_local_data_source.dart';
import 'package:reachout/data/datasource/source/account_local_data_source_impl.dart';
import 'package:reachout/data/datasource/source/account_remote_data_source.dart';
import 'package:reachout/data/datasource/source/account_remote_data_source_impl.dart';
import 'package:reachout/data/datasource/source/consultation_data_remote_data_source.dart';
import 'package:reachout/data/datasource/source/consultation_remote_data_source_impl.dart';
import 'package:reachout/data/repository/account_repository_impl.dart';
import 'package:reachout/data/repository/consultation_repository_impl.dart';
import 'package:reachout/domain/repository/account_repository.dart';
import 'package:reachout/domain/repository/consultation_repository.dart';
import 'package:reachout/domain/usecase/account/check_is_logged_in_use_case.dart';
import 'package:reachout/domain/usecase/account/get_user_info_use_case.dart';
import 'package:reachout/domain/usecase/account/google_sign_in_use_case.dart';
import 'package:reachout/domain/usecase/account/sign_out_use_case.dart';
import 'package:reachout/domain/usecase/consultation/get_consultation_service_use_case.dart';
import 'package:reachout/domain/usecase/consultation/get_featured_section_use_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  // region:: string constants
  const int timeOut = 120 * 1000;
  const String baseUrl = 'https://cc.ovream.com/api/';
  // endregion

  // region:: cache module
  // SharedPreferences
  getIt.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
  // endregion
  // region:: data source
  getIt.registerLazySingleton<AccountLocalDataSource>(
    () => AccountLocalDataSourceImpl(sharedPref: getIt()),
  );

  getIt.registerLazySingleton<AccountRemoteDataSource>(
    () => AccountRemoteDataSourceImpl(accountApi: getIt()),
  );

  getIt.registerLazySingleton<ConsultationRemoteDataSource>(
    () => ConsultationRemoteDataSourceImpl(consultationApi: getIt()),
  );
  // endregion
  // region:: repo
  getIt.registerLazySingleton<AccountRepository>(
    () => AccountRepositoryImpl(
      accountLocalDataSource: getIt(),
      accountRemoteDataSource: getIt(),
    ),
  );

  getIt.registerLazySingleton<ConsultationRepository>(
    () => ConsultationRepositoryImpl(
      consultationRemoteDataSource: getIt(),
    ),
  );
  // endregion
  //region:: usecase
  getIt.registerLazySingleton(
    () => CheckIsLoggedInUseCase(accountRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => GoogleSignInUseCase(accountRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => GetUserInfoUseCase(accountRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => SignOutUseCase(accountRepository: getIt()),
  );

  //consultation
  getIt.registerLazySingleton(
    () => GetFeaturedSectionUseCase(consultationRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => GetConsultationServiceUseCase(consultationRepository: getIt()),
  );
  //endregion
  //region:: api

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

  getIt.registerLazySingleton<ConsultationApi>(
    () => ConsultationApiImpl(client: getIt()),
  );
// endregion
}
