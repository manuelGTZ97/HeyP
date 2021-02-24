import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../entities/api_response.dart';

abstract class IChangePasswordFacade {
  Future<Either<ServerFailure, ApiResponse>> changePassword({
    @required Password password,
    @required Password newPassword,
    @required Password confirmPassword,
  });

  Future<Either<ServerFailure, ApiResponse>> sendCode({
    @required EmailAddress email,
  });
  Future<Either<ServerFailure, ApiResponse>> verifyCode({
    @required StringNotEmpty token,
    @required StringNotEmpty code,
  });
  Future<Either<ServerFailure, ApiResponse>> updatePassword({
    @required StringNotEmpty token,
    @required Password newPassword,
    @required Password confirmPassword,
  });
}
