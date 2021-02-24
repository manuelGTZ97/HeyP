// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailUser _$_$_DetailUserFromJson(Map<String, dynamic> json) {
  return _$_DetailUser(
    success: json['success'] as bool,
    message: json['message'] as String,
    accessToken: json['token'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DetailUserToJson(_$_DetailUser instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'token': instance.accessToken,
      'user': instance.user,
    };
