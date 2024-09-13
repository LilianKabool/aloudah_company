import 'dart:convert';
import 'package:aloudeh_company/core/api/api_consumer.dart';
import 'package:aloudeh_company/core/api/end_points.dart';
import 'package:aloudeh_company/core/api/logging_interceptor.dart';
import 'package:aloudeh_company/core/constants/strings_constants.dart';
import 'package:aloudeh_company/injection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ApiConsumer)
class DioConsumer implements ApiConsumer {
  DioConsumer(
    this._client,
  ) {
    _client.options
      ..sendTimeout = const Duration(seconds: 100)
      ..connectTimeout = const Duration(seconds: 10000)
      ..receiveTimeout = const Duration(seconds: 1000)
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = true;

    if (kDebugMode) {
      _client.interceptors.add(getIt<LoggingInterceptor>());
    }
  }

  final Dio _client;
  final Map<String, String> _headers = {
    StringsConstants.accept: StringsConstants.applicationJson,
    StringsConstants.contentType: StringsConstants.applicationJson,
    //StringsConstants.authorization: "Bearer ${SharedPreferencesUtils().getToken()}",
    StringsConstants.authorization:
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4xLjc6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE3MjYxMDQyNDMsImV4cCI6MTcyNjEwNzg0MywibmJmIjoxNzI2MTA0MjQzLCJqdGkiOiJSNXJPR2xoNTVsSzFtQ2IyIiwic3ViIjoiMSIsInBydiI6IjliZDBkMzY5NWNiZjhjYWQ1ODVkNDhhYzc5ZTYzMjQ0NTBlMzUxYmUifQ.NgCDEh92MFTARTu28T3P8n3_pF_z7Tt37NOgBNzIA98",
  };

  Options get _defaultOptions => Options(headers: _headers);

  @override
  Future get(
    String path, {
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
  }) async {
    return _request(
      () => _client.get(
        path,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: _defaultOptions,
      ),
    );
  }

  @override
  Future post(
    String path, {
    dynamic body,
    String? token,
    FormData? formData,
    ResponseType? responseType,
    Map<String, dynamic>? queryParameters,
  }) async {
    final options = _defaultOptions.copyWith(
      contentType: formData == null ? StringsConstants.jsonContentType : null,
      responseType: responseType,
    );

    return _request(
      () => _client.post(
        path,
        queryParameters: queryParameters,
        options: options,
        data: formData ?? body,
      ),
    );
  }

  @override
  Future put(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _request(
      () => _client.put(
        path,
        queryParameters: queryParameters,
        data: body,
        options: _defaultOptions,
      ),
    );
  }

  @override
  Future delete(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _request(
      () => _client.delete(
        path,
        data: body,
        options: _defaultOptions,
      ),
    );
  }

  Future _request(Future<Response> Function() request) async {
    try {
      final response = await request();
      return _handleResponseAsJson(response);
    } catch (error) {
      rethrow;
    }
  }

  dynamic _handleResponseAsJson(Response response) {
    return jsonDecode(response.data.toString());
  }
}
