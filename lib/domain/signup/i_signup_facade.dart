import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../core/failures.dart';
import '../entities/api_response.dart';
import '../entities/detail_user.dart';
import '../entities/user.dart';

abstract class ISignUpFacade {
  Future<Either<ServerFailure, ApiResponse>> register({
    @required User user,
  });
  Future<Either<ServerFailure, DetailUser>> updateProfile({
    @required User user,
  });
}
