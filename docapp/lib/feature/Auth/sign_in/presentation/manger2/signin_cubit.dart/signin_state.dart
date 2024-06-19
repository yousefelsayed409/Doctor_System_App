part of 'signin_cubit.dart';

@immutable
abstract class SigninState {}

class SigninInitial extends SigninState {}

class SigninLoadingState extends SigninState {}

class SigninSuccessState extends SigninState {
  

}

class SigninFauiler extends SigninState {
  final String errorMessage;

  SigninFauiler({required this.errorMessage});
}
