import 'package:dio/dio.dart';

class BaseProvider {
  static BaseOptions options = new BaseOptions(
    baseUrl: "https://api.themoviedb.org/3",
    connectTimeout: 5000,
    receiveTimeout: 3000,
    headers: {},
    queryParameters: {"api_key": "bdf46ab5b3209a01a20e3cf339842312"},
  );

  final Dio dio = Dio(options);
}
