import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification.dart';

part 'detail_notifications.freezed.dart';
part 'detail_notifications.g.dart';

@freezed
abstract class DetailNotifications with _$DetailNotifications {
  const factory DetailNotifications({
    bool success,
    @nullable String message,
    @nullable List<Notification> notifications,
  }) = _DetailNotifications;
  static const fromJsonFactory = _$DetailNotificationsFromJson;
  factory DetailNotifications.fromJson(Map<String, dynamic> json) =>
      _$DetailNotificationsFromJson(json);
}
