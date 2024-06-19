// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'get_user_info_cubit.dart';

@immutable
class GetUserInfoState {}

class GetUserInfoInitial extends GetUserInfoState {}

class GetUserInfoLoading extends GetUserInfoState {}

class GetUserInfoSuccess extends GetUserInfoState {
  final UserInfoModel userinfoModel;
  GetUserInfoSuccess({
    required this.userinfoModel,
  });
}

class GetUserInfoFailure extends GetUserInfoState {
  final String errorMessage;
  GetUserInfoFailure({
    required this.errorMessage,
  });
}


