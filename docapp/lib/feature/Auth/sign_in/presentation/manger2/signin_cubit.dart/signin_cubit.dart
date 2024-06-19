// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:docapp/core/api/dio_service.dart';
import 'package:docapp/core/api/end_poind.dart';
import 'package:docapp/core/api/exiption.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../core/helper/cash_helper.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit({required this.api}) : super(SigninInitial());
  final DioService api;
  GlobalKey<FormState> signInFormKey = GlobalKey();
  //Sign in email
  TextEditingController signInEmail = TextEditingController();
  //Sign in password
  TextEditingController signInPassword = TextEditingController();

  signin() async {
    try {
      emit(SigninLoadingState());
      var response = await api.post(EndPoint.login, isformdata: true, data: {
        ApiKey.email: signInEmail.text,
        ApiKey.password: signInPassword.text,
      });

      await CacheHelper()
          .saveData(key: ApiKey.token, value: response['data']['token']);
      
      emit(SigninSuccessState());
    } on ServerException catch (e) {
      emit(SigninFauiler(errorMessage: e.errModel.errorMessage));
      // TODO
    }
  }
}
