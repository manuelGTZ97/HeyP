part of 'notification_bloc.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<ServerFailure, DetailNotifications>>
            getNotificationsFailureOrSuccessOption,
    @required
        Option<Either<ServerFailure, ApiResponse>>
            readNotificationFailureOrSuccessOption,
  }) = _NotificationState;

  factory NotificationState.initial() => NotificationState(
        showErrorMessages: false,
        isSubmitting: false,
        getNotificationsFailureOrSuccessOption: none(),
        readNotificationFailureOrSuccessOption: none(),
      );
}
