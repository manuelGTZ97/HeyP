import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../core/failures.dart';
import '../entities/api_response.dart';
import '../entities/detail_notifications.dart';

abstract class INotificationFacade {
  Future<Either<ServerFailure, DetailNotifications>> getNotifications();
  Future<Either<ServerFailure, ApiResponse>> readNotification({
    @required int id,
  });
}
