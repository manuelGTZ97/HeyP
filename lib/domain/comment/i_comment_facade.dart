import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../entities/api_response.dart';
import '../entities/detail_comments.dart';

abstract class ICommentFacade {
  Future<Either<ServerFailure, DetailComments>> getComments({
    @required int id,
  });
  Future<Either<ServerFailure, ApiResponse>> addComment({
    @required int id,
    @required StringNotEmpty comment,
  });
  Future<Either<ServerFailure, ApiResponse>> deleteComment({
    @required int id,
  });
}
