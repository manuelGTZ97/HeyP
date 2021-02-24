@nullable
import 'package:freezed_annotation/freezed_annotation.dart';

import 'feed.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    int id,
    @nullable @JsonKey(name: 'username') String username,
    @nullable @JsonKey(name: 'first_name') String firstName,
    @nullable @JsonKey(name: 'last_name') String lastName,
    @nullable @JsonKey(name: 'phone') String phone,
    @nullable String email,
    @nullable String password,
    @nullable String avatar,
    @nullable @JsonKey(name: 'confirm_password') String confirmPassword,
    @nullable int posts,
    @nullable int followers,
    @nullable int following,
    @nullable int follow,
    @nullable List<Feed> feeds,
  }) = _User;
  static const fromJsonFactory = _$UserFromJson;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
