import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/detail_feeds.dart';
import '../../domain/feed/i_feed_facade.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: IFeedFacade)
class FeedFacade implements IFeedFacade {
  @override
  Future<Either<ServerFailure, DetailFeeds>> getFeeds({
    int offset,
  }) async {
    try {
      final result = await getIt<HeyPApiService>().getFeeds(offset);
      if (result.body.success) {
        return right(result.body);
      } else {
        return left(ServerFailure.apiFailure(msg: result.body.message));
      }
    } catch (e) {
      print(e);
      return left(const ServerFailure.serverError());
    }
  }

  @override
  Future<Either<ServerFailure, DetailFeeds>> getPosts({int userId}) async {
    try {
      final result = await getIt<HeyPApiService>().getPosts(userId);
      if (result.body.success) {
        return right(result.body);
      } else {
        return left(ServerFailure.apiFailure(msg: result.body.message));
      }
    } catch (e) {
      print(e);
      return left(const ServerFailure.serverError());
    }
  }

  @override
  Future<Either<ServerFailure, DetailFeeds>> getUserFeeds({
    int offset,
  }) async {
    try {
      final result = await getIt<HeyPApiService>().getUserFeeds(offset);
      if (result.body.success) {
        return right(result.body);
      } else {
        return left(ServerFailure.apiFailure(msg: result.body.message));
      }
    } catch (e) {
      print(e);
      return left(const ServerFailure.serverError());
    }
  }
}
