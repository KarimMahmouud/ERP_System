// import 'package:dio/dio.dart';

// abstract class Failure {
//   final String errMessage;

//   Failure({required this.errMessage});
// }

// class ServerFailure extends Failure {
//   ServerFailure({
//     required super.errMessage,
//   });

//   factory ServerFailure.fromDioError(DioException dioException) {
//     switch (dioException.type) {
//       case DioExceptionType.badResponse:
//         return ServerFailure.fromResponse(
//             dioException.response!.statusCode!, dioException.response!.data);
//       case DioExceptionType.connectionTimeout:
//         return ServerFailure(errMessage: 'Connection Timeout');
//       case DioExceptionType.sendTimeout:
//         return ServerFailure(errMessage: 'Send Timeout');
//       case DioExceptionType.receiveTimeout:
//         return ServerFailure(errMessage: 'Receive Timeout');
//       case DioExceptionType.badCertificate:
//         return ServerFailure(errMessage: 'Bad Certificate');
//       case DioExceptionType.cancel:
//         return ServerFailure(errMessage: 'Request Cancelled');
//       case DioExceptionType.connectionError:
//         return ServerFailure(errMessage: 'Connection Error');
//       case DioExceptionType.unknown:
//         if (dioException.message!.contains('SocketException')) {
//           return ServerFailure(errMessage: 'No Internet Connection');
//         }
//         return ServerFailure(errMessage: 'Unknown Error');
//       default:
//         return ServerFailure(errMessage: 'Unknown Error');
//     }
//   }

//   factory ServerFailure.fromResponse(int statusCode, dynamic response) {
//     if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
//       return ServerFailure(errMessage: response['error']['message']);
//     } else if (statusCode == 404) {
//       return ServerFailure(errMessage: 'Not Found , Please try later');
//     } else if (statusCode == 500) {
//       return ServerFailure(
//           errMessage: 'Internal Server Error , Please try later');
//     } else {
//       return ServerFailure(errMessage: 'Unknown Error');
//     }
//   }
// }
