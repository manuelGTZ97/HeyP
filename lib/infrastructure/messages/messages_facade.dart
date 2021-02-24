import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/detail_messages.dart';
import '../../domain/messages/i_messages_facade.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: IMessagesFacade)
class MessagesFacade implements IMessagesFacade {
  @override
  Future<Either<ServerFailure, DetailMessages>> getMessages() async {
    try {
      final result = await getIt<HeyPApiService>().getMessages();
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

  @override
  Future<Either<ServerFailure, DetailMessages>> getMessagesDetails(
      {int id, int offset}) async {
    try {
      final result =
          await getIt<HeyPApiService>().getMessagesDetails(id, offset);
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
