// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$_$_MessageFromJson(Map<String, dynamic> json) {
  return _$_Message(
    id: json['id'] as int,
    message: json['message'] as String,
    senderId: json['sender_id'] as int,
    receiverId: json['receiver_id'] as int,
    date: json['created_at'] as String,
    sender: json['sender'] == null
        ? null
        : User.fromJson(json['sender'] as Map<String, dynamic>),
    receiver: json['receiver'] == null
        ? null
        : User.fromJson(json['receiver'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'sender_id': instance.senderId,
      'receiver_id': instance.receiverId,
      'created_at': instance.date,
      'sender': instance.sender,
      'receiver': instance.receiver,
    };
