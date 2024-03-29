import 'dart:io';

import 'package:dio/dio.dart';

import '../errors/api_exception.dart';

// TODO: tergantung jenis apinya bisa dari data/message untuk mengambil pesan errornya
extension ApiExceptionDioX on DioError {
  ApiException get toApiException {
    switch (type) {
      case DioErrorType.connectionError:
        final code = response?.statusCode!;
        if (code == 422) {
          return ApiException.unprocessableEntity(
            message: message ?? response?.data['message'],
            errors: response?.data['data'] ?? {},
          );
        } else if (code == 401) {
          return ApiException.unAuthorized(
            response?.data['message'] ?? 'Unauthorized',
          );
        } else if (code == 400) {
          return ApiException.serverException(
            message: response?.data['message'] ?? 'Error tidak diketahui',
          );
        } else {
          return ApiException.serverException(
            message: response?.data['message'] ?? message,
          );
        }
      case DioErrorType.connectionTimeout:
        return const ApiException.network('Connection timeout');
      case DioErrorType.unknown:
        if (error is SocketException) {
          return const ApiException.network('No internet connection');
        } else {
          return ApiException.serverException(
            message: response?.data['data'] ?? message,
          );
        }
      default:
        return ApiException.serverException(
          message: response?.data['data'] ?? message,
        );
    }
  }
}
