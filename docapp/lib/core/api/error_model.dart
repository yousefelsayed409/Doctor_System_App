class ErrorModel {
  final int status;
  final String errorMessage;
  // final int code;

  ErrorModel({
    // required this.code,
    required this.status,
     required this.errorMessage});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      // code: jsonData['code'],
      status: jsonData['status'],
      errorMessage: jsonData['message'],

      // status: jsonData[ApiKey.status],
      // errorMessage: jsonData[ApiKey.errorMessage],
    );
  }
}
