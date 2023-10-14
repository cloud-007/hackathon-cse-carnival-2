import 'package:reachout/domain/repository/account_repository.dart';
import 'package:reachout/domain/util/failure.dart';
import 'package:reachout/domain/util/result.dart';

class SignOutUseCase {
  final AccountRepository _accountRepository;

  SignOutUseCase({required AccountRepository accountRepository})
      : _accountRepository = accountRepository;

  Future<Result<void>> call() async {
    return _accountRepository
        .signOut()
        .then((_) => const Result.success(null))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
