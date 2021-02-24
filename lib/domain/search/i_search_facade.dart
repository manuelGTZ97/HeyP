import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../entities/detail_feeds.dart';

abstract class ISearchFacade {
  Future<Either<ServerFailure, DetailFeeds>> search({
    @required StringNotEmpty query,
  });
  Future<Either<ServerFailure, DetailFeeds>> searchPosts({
    @required StringNotEmpty query,
  });
}
