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
        return ServerFailure("Connection Time Out");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send Time Out");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive Time Out");

      case DioExceptionType.badCertificate:
        return ServerFailure("badCertificate");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(statusCode:dioException.response!.statusCode!,
          response: dioException.response!.data
        );

      case DioExceptionType.cancel:
        return ServerFailure("Request Canceled");

      case DioExceptionType.connectionError:
        return ServerFailure("Connection Time Out");

      case DioExceptionType.unknown:
        if(dioException.message!.contains("SocketException"))  {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("Unexpected Error, Please try later!");
      default:
        return ServerFailure("Unexpected Error, Please try later!");

    }
  }
  factory ServerFailure.fromResponse(
      {required int statusCode,required dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    }else if(statusCode == 404){
      return ServerFailure("Your Request NOt Found, Please Try Again Later!") ;
    }else if(statusCode == 500) {
      return ServerFailure("Server Error, Please Try Again Later!");
    }else{
      return ServerFailure(
        "Opps There was an Error, please try again"
      );
    }
  }
}
