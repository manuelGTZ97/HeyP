import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/entities/detail_feeds.dart';
import '../../domain/search/i_search_facade.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: ISearchFacade)
class SearchFacade implements ISearchFacade {
  @override
  Future<Either<ServerFailure, DetailFeeds>> searchPosts(
      {StringNotEmpty query}) async {
    final queryStr = query.value.getOrElse(() => 'INVALID QUERY');
    try {
      final result = await getIt<HeyPApiService>().searchPosts(queryStr);
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
  Future<Either<ServerFailure, DetailFeeds>> search(
      {StringNotEmpty query}) async {
    final queryStr = query.value.getOrElse(() => 'INVALID QUERY');
    try {
      final result = await getIt<HeyPApiService>().search(queryStr);
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
