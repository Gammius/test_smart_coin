import 'package:dio/dio.dart';
import 'package:test_smart_coin/data/constants.dart';

class BaseApi {
  final Dio dio;

  BaseApi() : dio = Dio(BaseOptions(baseUrl: Constants.baseUrl)) {
    dio.interceptors.add(LogInterceptor(requestBody: true));
  }

  Future<Response<T>> get<T>(String path, {Map<String, dynamic>? query}) async {
    try {
      return await dio.get(path, queryParameters: query);
    } on DioException catch (e) {
      throw "${e.response?.statusCode}";
    }
  }
}
