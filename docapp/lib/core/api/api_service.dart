abstract class ApiService {
  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparametrs,
    bool isformdata = false,
  });

  Future<dynamic> get(String path,
      {Object? data, Map<String, dynamic>? queryparametars});

  Future<dynamic> delet(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparametars,
    bool isformdata = false,
  });

  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparametars,
    bool isformdata = false,
  });
}
