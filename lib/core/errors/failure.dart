import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connection timeOut with Api Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send timeOut with Api Server");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive timeOut with Api Server");

      case DioExceptionType.badCertificate:
        return ServerFailure("badCertificate with Api Server");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("request to Api Server was canceled");

      case DioExceptionType.connectionError:
        return ServerFailure("no connection");

      case DioExceptionType.unknown:
        return ServerFailure(
            "opps , there was an error please try again later");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure("Your request is not found,please try later");
    } else if (statusCode == 500) {
      return ServerFailure("There is a server error ,please try later");
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else {
      return ServerFailure("There is an error, please try again");
    }
  }
}
