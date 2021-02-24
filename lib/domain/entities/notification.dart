import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    int id,
    @nullable int type,
    @nullable int seen,
    @nullable String date,
    @nullable @JsonKey(name: 'post_id') int postId,
    @nullable User sender,
    @nullable User receiver,
  }) = _Notification;
  static const fromJsonFactory = _$NotificationFromJson;
  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
