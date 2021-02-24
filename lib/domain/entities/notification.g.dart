// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notification _$_$_NotificationFromJson(Map<String, dynamic> json) {
  return _$_Notification(
    id: json['id'] as int,
    type: json['type'] as int,
    seen: json['seen'] as int,
    date: json['date'] as String,
    postId: json['post_id'] as int,
    sender: json['sender'] == null
        ? null
        : User.fromJson(json['sender'] as Map<String, dynamic>),
    receiver: json['receiver'] == null
        ? null
        : User.fromJson(json['receiver'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'seen': instance.seen,
      'date': instance.date,
      'post_id': instance.postId,
      'sender': instance.sender,
      'receiver': instance.receiver,
    };
