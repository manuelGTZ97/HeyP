// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailMessages _$_$_DetailMessagesFromJson(Map<String, dynamic> json) {
  return _$_DetailMessages(
    success: json['success'] as bool,
    message: json['message'] as String,
    messages: (json['messages'] as List)
        ?.map((e) =>
            e == null ? null : Message.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DetailMessagesToJson(_$_DetailMessages instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'messages': instance.messages,
    };
