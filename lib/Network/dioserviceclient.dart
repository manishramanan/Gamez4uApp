// class DioServiceClient {
//   DioServiceClient()
//       : _dio = Dio(
//           BaseOptions(
//             baseUrl: Endpoints.baseURL,
//             connectTimeout: 50000,
//             receiveTimeout: 50000,
//             responseType: ResponseType.json,
//           ),
//         )..interceptors.addAll([
//             AuthorizationInterceptor(),
//             LoggerInterceptor(),
//           ]);

//   late final Dio _dio;

//   Future<utm.UserTypeModel?> getUserType(String userName) async {
//   debugger.printLogs('Options -> ${_dio.options.toString()}');
//   debugger.printLogs('Headers -> ${_dio.options.headers}');
//   try {
//     final response = await _dio.post(
//       Endpoints.userTypeBasedOnUsername,
//       data: {'username': userName},
//     );
//     print('1- ${response.data}');
//     print('2- ${response.headers}');
//     if (response.statusCode == 200) {
//       utm.UserTypeModel userTypeModel =
//           utm.UserTypeModel.fromJson(response.data);

//       return userTypeModel;
//     }
//   } on DioError catch (err) {
//     final errorMessage = DioException.fromDioError(err).toString();
//     throw errorMessage;
//   } catch (e) {
//     throw e.toString();
//   }
//   return null;
// }

// }


