// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailPost _$_$_DetailPostFromJson(Map<String, dynamic> json) {
  return _$_DetailPost(
    success: json['success'] as bool,
    message: json['message'] as String,
    post: json['post'] == null
        ? null
        : Feed.fromJson(json['post'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DetailPostToJson(_$_DetailPost instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'post': instance.post,
    };
