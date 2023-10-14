import 'dart:io';

import 'package:dio/dio.dart';
import 'package:reachout/data/datasource/remote/source/account_local_data_source.dart';

class AuthInterceptor extends Interceptor {
  final AccountLocalDataSource _accountLocalDataSource;

  AuthInterceptor({
    required AccountLocalDataSource accountLocalDataSource,
  }) : _accountLocalDataSource = accountLocalDataSource;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final platform = Platform.operatingSystem;
    // get it from pubspec using package
    const packageName = 'com.example.reachout';
    final localeName = Platform.localeName;
    const versionName = '1.0.0';

    var requestHeaders = [
      MapEntry('App-Platform', platform),
      const MapEntry('App-Package-Name', packageName),
      MapEntry('App-Locale', localeName),
      const MapEntry('App-Version', versionName),
    ];

    final token = _accountLocalDataSource.getServerToken();
    if (token != null) {
      requestHeaders.add(MapEntry('Authorization', 'Token $token'));
    }

    options.headers.addEntries(requestHeaders);
    handler.next(options);
  }
}
