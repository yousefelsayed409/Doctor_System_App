import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:docapp/core/api/dio_service.dart';
import 'package:docapp/core/api/end_poind.dart';
import 'package:docapp/core/api/exiption.dart';
import 'package:docapp/core/error/handel_error.dart';
import 'package:docapp/feature/Auth/sign_up/data/model/sign_up_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({required this.api}) : super(SignUpInitialState());

  final DioService api;
  //Sign Up Form key
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  //Sign up name
  TextEditingController signUpName = TextEditingController();
  //Sign up phone number
  TextEditingController signUpPhoneNumber = TextEditingController();
  //Sign up email
  TextEditingController signUpEmail = TextEditingController();
  //Sign up password
  TextEditingController signUpPassword = TextEditingController();
  //Sign up confirm password
  TextEditingController signUpconfirmPassword = TextEditingController();
  //Sign up gender
  TextEditingController signUpgender = TextEditingController();

  signup() async {
    try {
      emit(SignUpLoadingState());
      final response = await api.post(EndPoint.register, data: {
        ApiKey.name: signUpName.text,
        ApiKey.email: signUpEmail.text,
        ApiKey.password: signUpPassword.text,
        ApiKey.confirmPassword: signUpconfirmPassword.text,
        ApiKey.phone: signUpPhoneNumber.text,
        ApiKey.gender: signUpgender.text,
      });

      var signupmodel = SignUpModel.fromJson(response );
      emit(SignUpSuccessState(message: signupmodel.message.toString()));
    } on ServerException catch (e) {
      emit(SignUpFailure(errorMessage: e.errModel.errorMessage));
      // TODO
    }
  }

  // signup() async {
  //   try {
  //     emit(SignUpLoadingState());

  //     var response = await api.post(EndPoint.register, data: {
  //       ApiKey.name: signUpName.text,
  //       ApiKey.email: signUpEmail.text,
  //       ApiKey.password: signUpPassword.text,
  //       ApiKey.confirmPassword: signUpconfirmPassword.text,
  //       ApiKey.phone: signUpPhoneNumber.text,
  //       ApiKey.gender: signUpgender.text,
  //     });

  //     final signupmodel = SignUpModel.fromJson(response.data);
  //     emit(SignUpSuccessState(message: signupmodel.message ?? ''));
  //   } on ServerException catch (e) {
  //     emit(SignUpFailure(errorMessage: e.errModel.errorMessage));
  //   } catch (e) {
  //     emit(SignUpFailure(errorMessage: 'An unexpected error occurred: $e'));
  //   }
  // }

  // void signUpMethod() async {
  //   try {
  //     emit(SignUpLoadingState());
  //     http.Response response = await http.post(
  //         Uri.parse('https://vcare.integration25.com/api/auth/register'),
  //         body: {
  //          ApiKey.name: signUpName.text,
  //       ApiKey.email: signUpEmail.text,
  //       ApiKey.password: signUpPassword.text,
  //       ApiKey.confirmPassword: signUpconfirmPassword.text,
  //       ApiKey.phone: signUpPhoneNumber.text,
  //       ApiKey.gender: signUpgender.text,
  //         });

  //     if (response.statusCode == 200) {
  //       var data = jsonDecode(response.body);
  //       if (data['status'] == true) {
  //         emit(SignUpSuccessState());
  //       }
  //     }
  //   } catch (e) {
  //     // TODO
  //     emit(SignUpFailure(errorMessage: e.toString()));
  //   }
  // }
}
