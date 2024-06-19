import 'package:bloc/bloc.dart';
import 'package:docapp/core/api/dio_service.dart';
import 'package:docapp/core/api/end_poind.dart';
import 'package:docapp/feature/home/data/repo/home_repo_impl.dart';
import 'package:meta/meta.dart';

import '../../../data/model/specialzation_model.dart';

part 'home_specializtion_state.dart';

class HomeSpecializtionCubit extends Cubit<HomeSpecializtionState> {
  HomeSpecializtionCubit(this.homeRpoimplementation)
      : super(HomeSpecializtionInitial());

  final HomeRpoimplementation homeRpoimplementation;

  Future<void> getSpecialization() async {
    emit(HomeSpecializtionLoading());
    var result = await homeRpoimplementation.getSpecialization();
    result.fold((failure) {
      emit(HomeSpecializtionFailure(failure.errModel.errorMessage));
    }, (spcialList) {
      emit(HomeSpecializtionSuccess(spcialList));
    });
  }
}
