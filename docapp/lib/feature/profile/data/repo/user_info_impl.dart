import 'package:dartz/dartz.dart';
import 'package:docapp/core/api/dio_service.dart';
import 'package:docapp/core/api/end_poind.dart';
import 'package:docapp/core/api/exiption.dart';
import 'package:docapp/feature/profile/data/model/user_info_model.dart';

class UserInfoImplementation {
  final DioService api;

  UserInfoImplementation(this.api);
  // UserInfoModel? userInfoModel;

  Future<Either<ServerException, UserInfoModel>> getUserInfo() async {
    try {
      var response = await api.get(EndPoint.getUserInfo);
      userInfoModel = UserInfoModel.fromJson(response);

      return right(UserInfoModel.fromJson(response));
    } on ServerException catch (e) {
      return left(ServerException(errModel: e.errModel));
    }
  }

  // Future<Either<String, String>> updateUserData({
  //   required String name,
  //   required String email,
  //   required String phone,
  //   required String gender,
  //   required String password,
  // }) async {
  //   try {
  //     var response = await api.post(EndPoint.upDateUserData, data: {
  //       ApiKey.name: name,
  //       ApiKey.email: email,
  //       ApiKey.phone: phone,
  //       ApiKey.gender: gender,
  //       ApiKey.password: password,
  //     });
  //     return right('');
  //   } on ServerException catch (e) {
  //     return left(e.errModel.errorMessage);
  //   }
  // }
}
