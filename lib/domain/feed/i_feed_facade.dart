import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../core/failures.dart';
import '../entities/detail_feeds.dart';

abstract class IFeedFacade {
  Future<Either<ServerFailure, DetailFeeds>> getFeeds({
    @required int offset,
  });
  Future<Either<ServerFailure, DetailFeeds>> getUserFeeds({
    @required int offset,
  });
  Future<Either<ServerFailure, DetailFeeds>> getPosts({
    @required int userId,
  });
}
