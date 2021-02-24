import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/comment/i_comment_facade.dart';
import '../../domain/core/failures.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/entities/api_response.dart';
import '../../domain/entities/detail_comments.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: ICommentFacade)
class CommentFacade implements ICommentFacade {
  @override
  Future<Either<ServerFailure, ApiResponse>> addComment(
      {int id, StringNotEmpty comment}) async {
    final commentStr = comment.value.getOrElse(() => 'INVALID COMMENT');
    try {
      final result = await getIt<HeyPApiService>().addComment(id, commentStr);
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
  Future<Either<ServerFailure, DetailComments>> getComments({int id}) async {
    try {
      final result = await getIt<HeyPApiService>().getComments(id);
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
  Future<Either<ServerFailure, ApiResponse>> deleteComment({int id}) async {
    try {
      final result = await getIt<HeyPApiService>().deleteComment(id);
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
