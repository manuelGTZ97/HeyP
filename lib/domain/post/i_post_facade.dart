import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../core/failures.dart';
import '../entities/api_response.dart';
import '../entities/detail_post.dart';

abstract class IPostFacade {
  Future<Either<ServerFailure, ApiResponse>> addPost({
    @required String imagePath,
    @required String body,
    @required int categoryId,
  });
  Future<Either<ServerFailure, ApiResponse>> likePost({
    @required int id,
  });
  Future<Either<ServerFailure, DetailPost>> getPost({
    @required int id,
  });
}
