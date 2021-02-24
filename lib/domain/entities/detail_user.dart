import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'detail_user.freezed.dart';
part 'detail_user.g.dart';

@freezed
abstract class DetailUser with _$DetailUser {
  const factory DetailUser({
    bool success,
    @nullable String message,
    @nullable @JsonKey(name: 'token') String accessToken,
    //@nullable @JsonKey(name: 'refresh_token') String refreshToken,
    @nullable @JsonKey(name: 'user') User user,
  }) = _DetailUser;

  static const fromJsonFactory = _$DetailUserFromJson;

  factory DetailUser.fromJson(Map<String, dynamic> json) =>
      _$DetailUserFromJson(json);
}
