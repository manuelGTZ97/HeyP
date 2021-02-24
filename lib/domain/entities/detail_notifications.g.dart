// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailNotifications _$_$_DetailNotificationsFromJson(
    Map<String, dynamic> json) {
  return _$_DetailNotifications(
    success: json['success'] as bool,
    message: json['message'] as String,
    notifications: (json['notifications'] as List)
        ?.map((e) =>
            e == null ? null : Notification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DetailNotificationsToJson(
        _$_DetailNotifications instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'notifications': instance.notifications,
    };
