// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_comments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailComments _$_$_DetailCommentsFromJson(Map<String, dynamic> json) {
  return _$_DetailComments(
    success: json['success'] as bool,
    message: json['message'] as String,
    comments: (json['comments'] as List)
        ?.map((e) =>
            e == null ? null : Comment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DetailCommentsToJson(_$_DetailComments instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'comments': instance.comments,
    };
