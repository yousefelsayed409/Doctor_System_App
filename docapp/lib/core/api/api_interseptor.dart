import 'package:dio/dio.dart';

import '../helper/cash_helper.dart';
import 'end_poind.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] =
        CacheHelper().getData(key: ApiKey.token) != null
            ? 'Bearer ${CacheHelper().getData(key: ApiKey.token)}'
            : null;
    // 'Bearer ${CacheHelper().getData(key: ApiKey.token)}';

    // TODO: implement onRequest
    super.onRequest(options, handler);
    
  }
}
