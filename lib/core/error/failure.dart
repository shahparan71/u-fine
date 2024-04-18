import 'package:dio/dio.dart';

abstract class Failure {
  String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {

    print("object453 ${dioError.message}");
    print("object453 6 ${dioError.type}");

    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout with the Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Sending Timeout with the Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receiving Timeout with the Server");
      case DioExceptionType.badResponse:
        return ServerFailure("Server Issue");
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
