import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user.freezed.dart';
part 'login_user.g.dart';

@freezed
abstract class LoginUser with _$LoginUser {
  const factory LoginUser({
    String email,
    String password,
  }) = _LoginUser;

  static const fromJsonFactory = _$LoginUserFromJson;

  factory LoginUser.fromJson(Map<String, dynamic> json) =>
      _$LoginUserFromJson(json);
}
