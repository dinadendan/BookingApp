import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMessage ;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure{
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException){
    switch(dioException.type){

      case DioExceptionType.connectionTimeout:
       return ServerFailure('Connection timeOut with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeOut with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeOut with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure('incorrect certificate happened');


      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure('There is connectionError');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');

      default:
        return ServerFailure('OPPs There was an Error, Please try again');
    }
    }


  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('OPPs There was an Error, Please try again');
    }
  }
}