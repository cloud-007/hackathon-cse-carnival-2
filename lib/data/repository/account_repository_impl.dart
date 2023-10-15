import 'package:google_sign_in/google_sign_in.dart';
import 'package:reachout/data/datasource/source/account_local_data_source.dart';
import 'package:reachout/data/datasource/source/account_remote_data_source.dart';
import 'package:reachout/domain/model/account/user.dart';
import 'package:reachout/domain/repository/account_repository.dart';
import 'package:reachout/domain/util/failure.dart';
import 'package:reachout/presentation/util/logger.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  signInOption: SignInOption.standard,
  serverClientId:
      '350666845354-aeve6qh8e0cimoucoscaahdo4g9jtdee.apps.googleusercontent.com',
  forceCodeForRefreshToken: false,
);

class AccountRepositoryImpl implements AccountRepository {
  final AccountLocalDataSource _accountLocalDataSource;
  final AccountRemoteDataSource _accountRemoteDataSource;

  AccountRepositoryImpl({
    required AccountLocalDataSource accountLocalDataSource,
    required AccountRemoteDataSource accountRemoteDataSource,
  })  : _accountLocalDataSource = accountLocalDataSource,
        _accountRemoteDataSource = accountRemoteDataSource;

  @override
  Future<void> googleSignIn() async {
    final String accessToken = await _getGoogleAccessToken();

    final response = await _accountRemoteDataSource.googleSignIn(
      accessToken: accessToken,
      deviceId: null,
      firebasePushToken: null,
    );

    await _saveAccountId(id: response.userResponse.id.toString() ?? '');
    await _saveSessionToken(token: response.token);
  }

  @override
  String? getSessionToken() => _accountLocalDataSource.getServerToken();

  @override
  String? getAccountId() {
    return _accountLocalDataSource.getAccountId();
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.disconnect();
    await _accountLocalDataSource.removeServerToken();
    await _accountLocalDataSource.removeAccountId();
  }

  @override
  Future<User> getUserInfo() => _accountRemoteDataSource.getUserInfo();

  //region :: Private methods

  Future<String> _getGoogleAccessToken() async {
    try {
      final signInAccount = await _googleSignIn.signIn();
      final loginData = await signInAccount?.authentication;
      assert(loginData?.accessToken != null);
      return loginData!.accessToken!;
      //
    } on AssertionError {
      // When the user cancels the sign-in process, signIn() returns null.
      // In this case, we don't want to log the error to Crashlytics.
      const failureMessage = 'User cancelled the sign-in process.';
      throw const Failure.cancelException(message: failureMessage);
      //
    } catch (exc) {
      logger.e('google sign in error: $exc');
      const failureMessage =
          'Failed to sign into your Google account. Please try again later.';
      throw const Failure.unrecognizedException(message: failureMessage);
    }
  }

  Future<void> _saveSessionToken({required String token}) async {
    try {
      await _accountLocalDataSource.setServerToken(token: token);
      //
    } catch (exc) {
      const failureMessage =
          'Failed to initialize your account. Please try again later.';
      throw const Failure.unrecognizedException(message: failureMessage);
    }
  }

  Future<void> _saveAccountId({required String id}) async {
    try {
      await _accountLocalDataSource.setAccountId(id: id);
      //
    } catch (exc) {
      const failureMessage =
          'Failed to initialize your account. Please try again later.';
      throw const Failure.unrecognizedException(message: failureMessage);
    }
  }

// endregion
}
