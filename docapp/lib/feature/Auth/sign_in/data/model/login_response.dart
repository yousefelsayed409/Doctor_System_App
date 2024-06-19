// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse {
   String message;
   bool status;
   int? code; 
  @JsonKey(name: 'data')
   UserData? userdata; 
  LoginResponse({
    required this.message,
    required this.status,
    this.code,
    this.userdata,
  }); 
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
 



@JsonSerializable()

class UserData {
  final String? token;
  final String? username;
  UserData({
    required this.token,
    required this.username,
  }); 
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  
}
