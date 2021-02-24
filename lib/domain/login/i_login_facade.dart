import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../entities/detail_user.dart';

abstract class ILoginFacade {
  Future<Either<ServerFailure, DetailUser>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
}
