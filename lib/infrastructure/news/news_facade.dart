import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/detail_news.dart';
import '../../domain/news/i_news_facade.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: INewsFacade)
class NewsFacade implements INewsFacade {
  @override
  Future<Either<ServerFailure, DetailNews>> getNews() async {
    try {
      final result = await getIt<HeyPApiService>().getNews();
      if (result.body.success) {
        return right(result.body);
      } else {
        return left(ServerFailure.apiFailure(msg: result.body.message));
      }
    } catch (e) {
      print(e);
      return left(ServerFailure.serverError());
    }
  }
}
