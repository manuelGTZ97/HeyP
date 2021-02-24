// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_feeds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailFeeds _$_$_DetailFeedsFromJson(Map<String, dynamic> json) {
  return _$_DetailFeeds(
    success: json['success'] as bool,
    message: json['message'] as String,
    feeds: (json['feeds'] as List)
        ?.map(
            (e) => e == null ? null : Feed.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DetailFeedsToJson(_$_DetailFeeds instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'feeds': instance.feeds,
    };
