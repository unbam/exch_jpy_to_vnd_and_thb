import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

///
/// ApiError
///
@freezed
class ApiError with _$ApiError {
  const factory ApiError.badRequest() = _BadRequest;

  const factory ApiError.badCertificate() = _BadCertificate;

  const factory ApiError.conflict() = _Conflict;

  const factory ApiError.connectionError() = _ConnectionError;

  const factory ApiError.connectionTimeout() = _ConnectionTimeout;

  const factory ApiError.defaultError(String error) = _DefaultError;

  const factory ApiError.formatException() = _FormatException;

  const factory ApiError.internalServerError() = _InternalServerError;

  const factory ApiError.noInternetConnection() = _NoInternetConnection;

  const factory ApiError.notFound(String reason) = _NotFound;

  const factory ApiError.receiveTimeout() = _ReceiveTimeout;

  const factory ApiError.requestCancelled() = _RequestCancelled;

  const factory ApiError.requestTimeout() = _RequestTimeout;

  const factory ApiError.sendTimeout() = _SendTimeout;

  const factory ApiError.serviceUnavailable() = _ServiceUnavailable;

  const factory ApiError.unauthorisedRequest() = _UnauthorisedRequest;

  const factory ApiError.unexpectedError() = _UnexpectedError;

  const factory ApiError.unknown() = _Unknown;

  static ApiError getError(dynamic error) {
    if (error is Exception) {
      try {
        ApiError apiError;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.connectionTimeout:
              apiError = const ApiError.connectionTimeout();
              break;
            case DioErrorType.sendTimeout:
              apiError = const ApiError.sendTimeout();
              break;
            case DioErrorType.receiveTimeout:
              apiError = const ApiError.receiveTimeout();
              break;
            case DioErrorType.badCertificate:
              apiError = const ApiError.badCertificate();
              break;
            case DioErrorType.badResponse:
              switch (error.response!.statusCode) {
                case 400:
                case 401:
                case 403:
                  apiError = const ApiError.unauthorisedRequest();
                  break;
                case 404:
                  apiError = const ApiError.notFound('Not found');
                  break;
                case 408:
                  apiError = const ApiError.requestTimeout();
                  break;
                case 409:
                  apiError = const ApiError.conflict();
                  break;
                case 500:
                  apiError = const ApiError.internalServerError();
                  break;
                case 503:
                  apiError = const ApiError.serviceUnavailable();
                  break;
                default:
                  final responseCode = error.response!.statusCode;
                  apiError = ApiError.defaultError(
                    'Received invalid status code: $responseCode',
                  );
                  break;
              }
              break;
            case DioErrorType.cancel:
              apiError = const ApiError.requestCancelled();
              break;
            case DioErrorType.connectionError:
              apiError = const ApiError.connectionError();
              break;
            case DioErrorType.unknown:
              apiError = const ApiError.unknown();
              break;
          }
        } else if (error is SocketException) {
          apiError = const ApiError.noInternetConnection();
        } else {
          apiError = const ApiError.unexpectedError();
        }

        return apiError;
      } on Exception catch (_) {
        return const ApiError.unexpectedError();
      }
    } else {
      return const ApiError.unexpectedError();
    }
  }
}
