part of 'notification_bloc.dart';

@freezed
abstract class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getNotifications() = GetNotifications;
  const factory NotificationEvent.readNotification(int id) = ReadNotification;
}
