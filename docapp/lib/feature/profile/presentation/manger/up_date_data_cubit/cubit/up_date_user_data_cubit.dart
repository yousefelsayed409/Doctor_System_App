// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:docapp/core/api/end_poind.dart';
import 'package:docapp/core/api/exiption.dart';
import 'package:docapp/feature/profile/data/model/user_info_model.dart';
import 'package:docapp/feature/profile/presentation/manger/user_info_cubit/cubit/get_user_info_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import 'package:docapp/core/api/dio_service.dart';

part 'up_date_user_data_state.dart';

class UpDateUserDataCubit extends Cubit<UpDateUserDataState> {
  UpDateUserDataCubit(
    this.api,
  ) : super(UpDateUserDataInitial());
  final DioService api;

  GlobalKey<FormState> upDateDataFormKey = GlobalKey();
  TextEditingController upDateDataName = TextEditingController();
  TextEditingController upDateDataEmail = TextEditingController();
  TextEditingController upDateDatapPhone = TextEditingController();
  TextEditingController upDateDataGender = TextEditingController();
  TextEditingController upDateDataPassword = TextEditingController();
  TextEditingController confirmationPassword = TextEditingController();

  Future<void> upDateUserDate() async {
    try {
      emit(UpDateUserDataLoading());
      var response = await api.post(EndPoint.upDateUserData, data: {
        ApiKey.name: upDateDataName,
        ApiKey.email: upDateDataEmail,
        ApiKey.phone: upDateDatapPhone,
        ApiKey.gender: upDateDataGender,
        ApiKey.password: upDateDataPassword,
        ApiKey.confirmPassword: confirmationPassword
      });
      emit(UpDateUserDataSuccess());
    } on ServerException catch (e) {
      emit(UpDateUserDataFailure(errorMessage: e.errModel.errorMessage));
      // TODO
    }
  }

  Future<void> logOut() async {
    try {
      emit(LogOutLoadingState());
      var response = await api.post(
        EndPoint.logOut,
      );
      emit(LogOutSuccessState());
    } on ServerException catch (e) {
      emit(LogOutFailureState(errorMessage: e.errModel.errorMessage));
      // TODO
    }
  }
}
