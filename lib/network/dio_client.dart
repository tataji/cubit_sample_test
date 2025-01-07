import 'package:dio/dio.dart';

class DioClient {
  static DioClient? _dioClient;
  static late Dio _dio;

  factory DioClient() {
    _dioClient ??= DioClient()._internal();
    return _dioClient!;
  }

  _internal() {
    String baseUrl = "";
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
  }

  Dio get dio =>_dio;
}
