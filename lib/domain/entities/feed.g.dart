// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feed _$_$_FeedFromJson(Map<String, dynamic> json) {
  return _$_Feed(
    id: json['id'] as int,
    image: json['image'] as String,
    body: json['body'] as String,
    date: json['date'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    likes: json['likes'] as int,
    liked: json['liked'] as int,
    comments: json['comments'] as int,
  );
}

Map<String, dynamic> _$_$_FeedToJson(_$_Feed instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'body': instance.body,
      'date': instance.date,
      'user': instance.user,
      'likes': instance.likes,
      'liked': instance.liked,
      'comments': instance.comments,
    };
