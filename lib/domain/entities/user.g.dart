// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as int,
    username: json['username'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
    avatar: json['avatar'] as String,
    confirmPassword: json['confirm_password'] as String,
    posts: json['posts'] as int,
    followers: json['followers'] as int,
    following: json['following'] as int,
    follow: json['follow'] as int,
    feeds: (json['feeds'] as List)
        ?.map(
            (e) => e == null ? null : Feed.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'email': instance.email,
      'password': instance.password,
      'avatar': instance.avatar,
      'confirm_password': instance.confirmPassword,
      'posts': instance.posts,
      'followers': instance.followers,
      'following': instance.following,
      'follow': instance.follow,
      'feeds': instance.feeds,
    };
