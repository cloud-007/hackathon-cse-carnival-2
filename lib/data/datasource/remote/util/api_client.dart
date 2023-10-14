import 'package:dio/dio.dart';
import 'package:reachout/domain/util/failure.dart';

/// A utility type to denote JSON Object is a response.
typedef JSONObject = Map<String, dynamic>;

/// A utility type to denote JSON List is a response.
typedef JSONList = List<dynamic>;

/// A callback that returns a Future of Dio response.
typedef HttpLibraryMethod<T> = Future<Response<T>> Function();

/// A callback that converts a Dio response into a DTO.
typedef Converter<T, R> = R Function(T response);

/// A utility class to handle HTTP requests.
class ApiClient {
  final Dio _client;

  ApiClient({required Dio client}) : _client = client;

  /// HTTP GET request.
  Future<R> get<T, R>({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    required Converter<T, R> converter,
  }) {
    return _mapException<T, R>(
      method: () => _client.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      ),
      converter: converter,
    );
  }

  /// HTTP POST request.
  Future<R> post<T, R>({
    required String path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required Converter<T, R> converter,
  }) {
    return _mapException<T, R>(
      method: () => _client.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      converter: converter,
    );
  }

  /// HTTP PUT request.
  Future<R> put<T, R>({
    required String path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required Converter<T, R> converter,
  }) {
    return _mapException<T, R>(
      method: () => _client.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      converter: converter,
    );
  }

  /// HTTP PATCH request.
  Future<R> patch<T, R>({
    required String path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required Converter<T, R> converter,
  }) {
    return _mapException<T, R>(
      method: () => _client.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      converter: converter,
    );
  }

  /// HTTP DELETE request.
  Future<R> delete<T, R>({
    required String path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    required Converter<T, R> converter,
  }) {
    return _mapException<T, R>(
      method: () => _client.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      ),
      converter: converter,
    );
  }

  /// HTTP HEAD request.
  Future<R> head<T, R>({
    required String path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    required Converter<T, R> converter,
  }) {
    return _mapException<T, R>(
      method: () => _client.head(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      ),
      converter: converter,
    );
  }

  // Map Dio exceptions (and any other exceptions) to an exception type
  // supported by our application.
  Future<R> _mapException<T, R>({
    required HttpLibraryMethod<T> method,
    required Converter<T, R> converter,
  }) async {
    Response<T> response;
    try {
      response = await method();
    } catch (exception) {
      throw Failure.mapDioException(Exception(exception));
    }

    try {
      return converter(response.data as T);
    } catch (exception) {
      throw Failure.mapParsingException(Exception(exception));
    }
  }
}
