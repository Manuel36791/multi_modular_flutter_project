import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constants/api_constants.dart';

class DioFactory {
  DioFactory();

  Future<Dio> getDio() async {
    Dio dio = Dio();

    Map<String, String> headers = {
      ApiConstants.contentType: ApiConstants.applicationJson,
      ApiConstants.accept: ApiConstants.applicationJson,
      ApiConstants.authorization: "Bearer ", // TODO: add access token
      ApiConstants.defaultLang: "app_language", // TODO: add app language
      ApiConstants.clientId: "app_client_id", // TODO: add client id
    };

    dio.options = BaseOptions(
      baseUrl: "base_url", // TODO: add base url
      headers: headers,
      receiveTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
    );

    // Add logger (Debug mode only)
    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          enabled: kDebugMode,
        ),
      );
    }

    return dio;
  }
}
