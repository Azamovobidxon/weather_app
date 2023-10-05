import 'package:dio/dio.dart';

import '../../utils/custom_exceptions.dart';

enum Method {
  get,
  post,
  put,
  patch,
  delete,
}

class ApiService {
  static ApiService _instance(Dio dio) => ApiService._(dio);

  factory ApiService(Dio dio) => _instance(dio);

  ApiService._(this.dio);

  final Dio dio;

  Future<String> request(
    String path, {
    Method method = Method.get,
    Map<String, String>? headers,
    Map<String, String>? queryParametrs,
    Object? body,
  }) async {
    if (headers != null) dio.options.headers.addAll(headers);

    try {
      Response<String> response = await switch (method) {
        Method.get => dio.get<String>(path, queryParameters: queryParametrs, data: body),
        Method.post => dio.put<String>(path, queryParameters: queryParametrs, data: body),
        Method.put => dio.put<String>(path, queryParameters: queryParametrs, data: body),
        Method.patch => dio.patch<String>(path, queryParameters: queryParametrs, data: body),
        Method.delete => dio.delete<String>(path, queryParameters: queryParametrs, data: body),
      };

      return switch (response.statusCode) {
        null => Error.throwWithStackTrace(
            UnknownExeption("${response.data}",-1), StackTrace.current),
        >= 100 && < 200 => Error.throwWithStackTrace(
            UnknownExeption(response.statusMessage!, response.statusCode!),
            StackTrace.current,
          ),
        >= 200 && < 300 => response.data ?? "",
        >= 300 && < 400 => Error.throwWithStackTrace(
            UnknownExeption(response.statusMessage!, response.statusCode!),
            StackTrace.current,
          ),
        >= 400 && < 500 => Error.throwWithStackTrace(
            ClientExeption(response.statusMessage!, response.statusCode!),
            StackTrace.current,
          ),
        >= 500 && < 600 => Error.throwWithStackTrace(
            ServerExeption(response.statusMessage!, response.statusCode!),
            StackTrace.current),
        _ => Error.throwWithStackTrace(
            UnknownExeption(response.statusMessage!, response.statusCode!),
            StackTrace.current,
          ),
      };
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
      rethrow;
    }
  }
}

/*
        final options = BaseOptions(
          baseUrl: Config.geoBaseUrl,
          connectTimeout: Duration(seconds: 5),
          receiveTimeout: Duration(seconds: 5),
          responseType: ResponseType.json,
        );

        */
