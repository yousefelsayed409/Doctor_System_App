import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:docapp/core/api/dio_service.dart';
import 'package:docapp/core/api/end_poind.dart';
import 'package:docapp/core/api/exiption.dart';
import 'package:docapp/feature/home/data/model/specialzation_model.dart';

class HomeRpoimplementation {
  final DioService api;

  HomeRpoimplementation(this.api);

  Future<Either<ServerException, List<DataResponse>>>
      getSpecialization() async {
    try {
      var response = await api.get(
        EndPoint.specialization,
      );
      List<DataResponse> specialslist = [];
      for (var item in response['data']) {
        specialslist.add(DataResponse.fromJson(item));
      }
      return Right(specialslist);
    } on ServerException catch (error) {
      return Left(ServerException(errModel: error.errModel));
    }
  }
}
