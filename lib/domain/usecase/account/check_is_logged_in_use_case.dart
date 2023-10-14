import 'package:reachout/domain/repository/account_repository.dart';

class CheckIsLoggedInUseCase {
  final AccountRepository _accountRepository;

  CheckIsLoggedInUseCase({required AccountRepository accountRepository})
      : _accountRepository = accountRepository;

  bool call() {
    final String? token = _accountRepository.getSessionToken();
    return token != null;
  }
}
