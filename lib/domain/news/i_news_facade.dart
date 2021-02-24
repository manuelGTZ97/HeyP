import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../entities/detail_news.dart';

abstract class INewsFacade {
  Future<Either<ServerFailure, DetailNews>> getNews();
}
