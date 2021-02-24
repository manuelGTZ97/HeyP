import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/api_response.dart';
import '../../domain/entities/detail_notifications.dart';
import '../../domain/notification/i_notification_facade.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final INotificationFacade _notificationFacade;
  NotificationBloc(this._notificationFacade)
      : super(NotificationState.initial());

  @override
  Stream<NotificationState> mapEventToState(
    NotificationEvent event,
  ) async* {
    yield* event.map(
      getNotifications: (e) async* {
        yield* _performGetNotificationsActionFacade(
          _notificationFacade.getNotifications,
        );
      },
      readNotification: (e) async* {
        yield* _performReadNotificationActionFacade(
          e.id,
          _notificationFacade.readNotification,
        );
      },
    );
  }

  Stream<NotificationState> _performGetNotificationsActionFacade(
    Future<Either<ServerFailure, DetailNotifications>> Function() forwardedCall,
  ) async* {
    Either<ServerFailure, DetailNotifications> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      getNotificationsFailureOrSuccessOption: none(),
    );

    failureOrSuccess = await forwardedCall();

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      getNotificationsFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<NotificationState> _performReadNotificationActionFacade(
    int id,
    Future<Either<ServerFailure, ApiResponse>> Function({
      @required int id,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, ApiResponse> failureOrSuccess;

    yield state.copyWith(
      readNotificationFailureOrSuccessOption: none(),
    );

    failureOrSuccess = await forwardedCall(
      id: id,
    );

    yield state.copyWith(
      readNotificationFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
