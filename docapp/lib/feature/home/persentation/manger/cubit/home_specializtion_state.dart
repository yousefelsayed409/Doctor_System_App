part of 'home_specializtion_cubit.dart';

@immutable
class HomeSpecializtionState {}

class HomeSpecializtionInitial extends HomeSpecializtionState {}

class HomeSpecializtionLoading extends HomeSpecializtionState {}

class HomeSpecializtionSuccess extends HomeSpecializtionState {
  List<DataResponse> specializationDataList;

  HomeSpecializtionSuccess(this.specializationDataList);
}

class HomeSpecializtionFailure extends HomeSpecializtionState {
  final String errorMessage;

  HomeSpecializtionFailure(this.errorMessage);
}
