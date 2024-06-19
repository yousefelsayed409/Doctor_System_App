import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:docapp/core/api/dio_service.dart';
import 'package:docapp/core/api/end_poind.dart';
import 'package:docapp/core/api/exiption.dart';
import 'package:docapp/feature/profile/data/model/user_info_model.dart';
import 'package:docapp/feature/profile/data/repo/user_info_impl.dart';
import 'package:meta/meta.dart';

part 'get_user_info_state.dart';

class GetUserInfoCubit extends Cubit<GetUserInfoState> {
  GetUserInfoCubit(this.userInfoImplementation) : super(GetUserInfoInitial());

  final UserInfoImplementation userInfoImplementation;

  Future<void> getUserInfo() async {
    emit(GetUserInfoLoading());
    final response = await userInfoImplementation.getUserInfo();
    // userInfoModel = UserInfoModel.fromJson(response as Map<String, dynamic>);

    response.fold((errorMessage) {
      emit(
          GetUserInfoFailure(errorMessage: errorMessage.errModel.errorMessage));
    }, (userInfo) {
      emit(GetUserInfoSuccess(userinfoModel: userInfo));
    });
  }

  // void updateUserData({
  //   required String name,
  //   required String email,
  //   required String phone,
  //   required String gender,
  //   required String passsword,
  // }) async {
  //   try {
  //     emit(UpdateUserDataLoadingState());
  //     var response =
  //         await DioService(dio: Dio()).post(EndPoint.upDateUserData, data: {
  //       ApiKey.name: name,
  //       ApiKey.email: email,
  //       ApiKey.phone: phone,
  //       ApiKey.gender: gender,
  //       ApiKey.password: passsword,
  //     });
  //     emit(UpdateUserDataSuccessState());
  //   } on ServerException catch (e) {
  //     emit(UpdateUserDataFailureState(errorMessage: e.errModel.errorMessage));
  //     // TODO
  //   }
  // }
}
