import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    int id,
    @nullable String message,
    @nullable @JsonKey(name: 'sender_id') int senderId,
    @nullable @JsonKey(name: 'receiver_id') int receiverId,
    @nullable @JsonKey(name: 'created_at') String date,
    @nullable User sender,
    @nullable User receiver,
  }) = _Message;
  static const fromJsonFactory = _$MessageFromJson;
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
