// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:docapp/core/api/end_poind.dart';

import 'api_interseptor.dart';
import 'api_service.dart';
import 'exiption.dart';

class DioService extends ApiService {
  final Dio dio;
  DioService({required this.dio}) {
    dio.options.baseUrl = EndPoint.baseUrl;
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
      error: true,
    ));
  }

  @override
  Future delet(String path,
      {dynamic data,
      Map<String, dynamic>? queryparametars,
      bool isformdata = false}) async {
    try {
      var response = await dio.delete(path,
          data: data,
          //  isformdata ? FormData.fromMap(data) : data,
          queryParameters: queryparametars);
      return response.data;
    } on DioException catch (e) {
      // TODO
      handleDioExceptions(e);
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryparametars}) async {
    try {
      var response =
          await dio.get(path, data: data, queryParameters: queryparametars);
      return response.data;
    } on Exception catch (e) {
      // TODO
    }
  }

  @override
  Future patch(String path,
      {dynamic data,
      Map<String, dynamic>? queryparametars,
      bool isformdata = false}) async {
    try {
      var response = await dio.patch(path,
          data: data,
          //  isformdata ? FormData.fromMap(data) : data,
          queryParameters: queryparametars);
      return response.data;
    } on Exception catch (e) {
      // TODO
    }
  }

  @override
  Future post(String path,
      {dynamic data,
      Map<String, dynamic>? queryparametrs,
      bool isformdata = false}) async {
    try {
      var response = await dio.post(path,
          data: data,
          //  isformdata ? FormData.fromMap(data) : data,
          queryParameters: queryparametrs);
      return response.data;
    } on Exception catch (e) {
      // TODO
    }
  }
}
