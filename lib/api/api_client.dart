import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'base_url.dart';
import 'model/api_error.dart';
import 'model/api_result.dart';

const _defaultTimeout = Duration(seconds: 30);

/// apiClientProvider
final apiClientProvider = Provider<ApiClient>(
  (ref) => ApiClient(
    baseUrl,
    ref.watch(
      Provider<Dio>(
        (ref) {
          return Dio();
        },
      ),
    ),
  ),
);

///
/// ApiClient
///
class ApiClient {
  ApiClient(
    this.baseUrl,
    Dio dio, {
    this.interceptors,
  }) {
    _dio = dio;
    _dio
      ..options.baseUrl = baseUrl
      ..options.connectTimeout = _defaultTimeout
      ..options.receiveTimeout = _defaultTimeout
      ..httpClientAdapter
      ..options.headers = {'Content-Type': 'application/json; charset=UTF-8;'};
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestHeader: false,
          responseHeader: false,
        ),
      );
    }
  }

  /// Dio
  late final Dio _dio;

  /// URL
  final String baseUrl;

  /// Interceptor
  final List<Interceptor>? interceptors;

  ///
  /// GET
  ///
  Future<ApiResult> get(
    String uri, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final formData = FormData.fromMap(data ?? {});
      final response = await _dio.get<Map<String, dynamic>>(
        uri,
        data: formData,
        queryParameters: queryParameters,
        options: options ?? Options(headers: header),
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      return ApiResult.success(data: response.data!);
    } on DioError catch (de) {
      return ApiResult.failure(error: ApiError.getError(de));
    } on SocketException catch (se) {
      return ApiResult.failure(error: ApiError.getError(se));
    } on FormatException catch (fe) {
      return ApiResult.failure(error: ApiError.getError(fe));
    } on Exception catch (e) {
      return ApiResult.failure(error: ApiError.getError(e));
    }
  }

  ///
  /// POST
  ///
  Future<ApiResult> post(
    String uri, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final formData = FormData.fromMap(data ?? {});
      final response = await _dio.post<Map<String, dynamic>>(
        uri,
        data: formData,
        queryParameters: queryParameters,
        options: options ?? Options(headers: header),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return ApiResult.success(data: response.data!);
    } on DioError catch (de) {
      return ApiResult.failure(error: ApiError.getError(de));
    } on SocketException catch (se) {
      return ApiResult.failure(error: ApiError.getError(se));
    } on FormatException catch (fe) {
      return ApiResult.failure(error: ApiError.getError(fe));
    } on Exception catch (e) {
      return ApiResult.failure(error: ApiError.getError(e));
    }
  }
}
