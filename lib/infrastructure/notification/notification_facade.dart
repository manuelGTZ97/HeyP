import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/api_response.dart';
import '../../domain/entities/detail_notifications.dart';
import '../../domain/notification/i_notification_facade.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: INotificationFacade)
class NotificationFacade implements INotificationFacade {
  @override
  Future<Either<ServerFailure, DetailNotifications>> getNotifications() async {
    try {
      final result = await getIt<HeyPApiService>().getNotifications();
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
  Future<Either<ServerFailure, ApiResponse>> readNotification({int id}) async {
    try {
      final result = await getIt<HeyPApiService>().readNotification(id);
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
