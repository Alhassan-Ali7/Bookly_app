import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailure('bad response');
      case DioExceptionType.cancel:
        return ServerFailure('request cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('connection error');
      case DioExceptionType.unknown:
        return ServerFailure('unknown');
      default:
        return ServerFailure('Opps hehe an error happen try again later');
    }
  }
}
