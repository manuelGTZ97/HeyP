import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../core/failures.dart';
import '../entities/api_response.dart';
import '../entities/detail_user.dart';

abstract class IProfileFacade {
  Future<Either<ServerFailure, DetailUser>> getUserInfo({
    @required int id,
  });
  Future<Either<ServerFailure, ApiResponse>> followUser({
    @required int id,
  });
}
