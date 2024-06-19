import '../../feature/profile/data/model/user_info_model.dart';

class EndPoint {
  static String baseUrl = "https://vcare.integration25.com/api/";
  static String login = "auth/login";
  static String register = "/auth/register";
  static String specialization = 'specialization/index';
   static String getUserInfo = '/user/profile';
   static String upDateUserData = '/user/update';
      static String logOut = '/auth/logout';

}

   UserInfoModel? userInfoModel;

   String? Token ;
class ApiKey { 
  static String status = "status";
  static String gender = "gender";
  static String errorMessage = "message";
  static String email = "email";
  static String password = "password";
  static String token = "token";
  static String message = "message";
  static String name = "name";
  static String phone = "phone";
  static String confirmPassword = "password_confirmation";
}
