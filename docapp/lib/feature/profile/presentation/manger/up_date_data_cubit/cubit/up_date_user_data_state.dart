// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'up_date_user_data_cubit.dart';

@immutable
class UpDateUserDataState {}

class UpDateUserDataInitial extends UpDateUserDataState {}

class UpDateUserDataLoading extends UpDateUserDataState {}

class UpDateUserDataSuccess extends UpDateUserDataState {}

class UpDateUserDataFailure extends UpDateUserDataState {
  final String errorMessage;
  UpDateUserDataFailure({
    required this.errorMessage,
  });
} 

class LogOutLoadingState extends UpDateUserDataState {}

class LogOutSuccessState extends UpDateUserDataState {}

class LogOutFailureState extends UpDateUserDataState {
  final String errorMessage;
  LogOutFailureState({
    required this.errorMessage,
  });
}
