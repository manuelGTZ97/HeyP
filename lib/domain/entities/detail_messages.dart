import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'detail_messages.freezed.dart';
part 'detail_messages.g.dart';

@freezed
abstract class DetailMessages with _$DetailMessages {
  const factory DetailMessages({
    bool success,
    @nullable String message,
    @nullable List<Message> messages,
  }) = _DetailMessages;
  static const fromJsonFactory = _$DetailMessagesFromJson;
  factory DetailMessages.fromJson(Map<String, dynamic> json) =>
      _$DetailMessagesFromJson(json);
}
