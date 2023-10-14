import 'package:reachout/domain/model/account/user.dart';
import 'package:reachout/domain/repository/account_repository.dart';
import 'package:reachout/domain/util/failure.dart';
import 'package:reachout/domain/util/result.dart';

class GetUserInfoUseCase {
  final AccountRepository _accountRepository;

  GetUserInfoUseCase({required AccountRepository accountRepository})
      : _accountRepository = accountRepository;

  Future<Result<User>> call() async {
    return _accountRepository
        .getUserInfo()
        .then((User user) => Result.success(user))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
