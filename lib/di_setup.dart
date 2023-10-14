import 'package:get_it/get_it.dart';
import 'package:reachout/data/datasource/local/source/account_local_data_source_impl.dart';
import 'package:reachout/data/datasource/remote/source/account_local_data_source.dart';
import 'package:reachout/data/datasource/remote/source/account_remote_data_source.dart';
import 'package:reachout/data/datasource/remote/source/account_remote_data_source_impl.dart';
import 'package:reachout/data/repository/account_repository_impl.dart';
import 'package:reachout/di/network_module.dart';
import 'package:reachout/domain/repository/account_repository.dart';
import 'package:reachout/domain/usecase/account/check_is_logged_in_use_case.dart';
import 'package:reachout/domain/usecase/account/get_user_info_use_case.dart';
import 'package:reachout/domain/usecase/account/google_sign_in_use_case.dart';
import 'package:reachout/domain/usecase/account/sign_out_use_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  // region:: cache module
  // SharedPreferences
  getIt.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
  // endregion
  await setUpNetworkModule();
  // region:: data source
  getIt.registerLazySingleton<AccountLocalDataSource>(
    () => AccountLocalDataSourceImpl(sharedPref: getIt()),
  );

  getIt.registerLazySingleton<AccountRemoteDataSource>(
    () => AccountRemoteDataSourceImpl(accountApi: getIt()),
  );
  // endregion
  // region:: repo
  getIt.registerLazySingleton<AccountRepository>(
    () => AccountRepositoryImpl(
      accountLocalDataSource: getIt(),
      accountRemoteDataSource: getIt(),
    ),
  );
  // endregion
//   region:: usecase
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
// endregion
}
