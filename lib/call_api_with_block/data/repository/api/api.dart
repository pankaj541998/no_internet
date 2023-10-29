import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class BaseAPI{
  Dio _dio = Dio();

  BaseAPI(){
    _dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
    _dio.interceptors.add(PrettyDioLogger());
  }

  Dio get sendRequest => _dio;
}