import 'dart:io';

import 'package:dio/dio.dart';
import 'package:reachout/data/dart/local_data_source.dart';

class AuthInterceptor extends Interceptor {
  final LocalDataSource _localDataSource;

  AuthInterceptor({
    required LocalDataSource localDataSource,
  }) : _localDataSource = localDataSource;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final platform = Platform.operatingSystem;
    final packageName = await _localDataSource.getPackageName();
    final localeName = Platform.localeName;
    final versionName = await _localDataSource.getApkVersion();

    var requestHeaders = [
      MapEntry('App-Platform', platform),
      MapEntry('App-Package-Name', packageName),
      MapEntry('App-Locale', localeName),
      MapEntry('App-Version', versionName),
    ];

    final token = _localDataSource.getServerToken();
    if (token != null) {
      requestHeaders.add(MapEntry('Authorization', 'Token $token'));
    }

    options.headers.addEntries(requestHeaders);
    handler.next(options);
  }
}
